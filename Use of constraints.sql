create database dress_data;
use dress_data;

create table if not exists dress(
`Dress_ID` varchar(30),	
`Style`	varchar(30),	
`Price`	varchar(30),	
`Rating`	varchar(30),	
`Size`	varchar(30),	
`Season`	varchar(30),	
`NeckLine`	varchar(30),	
`SleeveLength` varchar(30),		
`waiseline`	varchar(30),	
`Material`	varchar(30),	
`FabricType`	varchar(30),	
`Decoration`	varchar(30),	
`Pattern Type` varchar(30),		
`Recommendation` varchar(30));	

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/AttributeDataSet.csv'
into table dress
FIELDS TERMINATED by ','
ENCLOSED by '"'
LINES TERMINATED by '\n'
Ignore 1 ROWS;

SHOW VARIABLES LIKE 'secure_file_priv';

select * from dress;

create table if not exists test (
test_id int auto_increment,
test_name varchar(30),
test_mailid varchar(30), 
test_address varchar(30),
primary key(test_id));

select * from test;

insert into test values (1,'suraj', 'suraj.mech904@gmail.com', 'bangalore'),
(2,'raj', 'raj.kumar@gmail.com', 'delhi'),
(3,'hitesh', 'hitesh.kr@gmail.com', 'bangalore');

select * from test;

create table if not exists test3 (
test_id int not null auto_increment,
test_name varchar(30),
test_mailid varchar(30), 
test_address varchar(30),
primary key(test_id));

insert into test2 (test_name, test_mailid, test_address) values ('suraj', 'suraj.mech904@gmail.com', 'bangalore'),
('raj', 'raj.kumar@gmail.com', 'delhi'),
('hitesh', 'hitesh.kr@gmail.com', 'bangalore');

select * from test2;

create table if not exists test4 (
test_id int ,
test_name varchar(30),
test_mailid varchar(30), 
test_address varchar(30),
test_salary int check(test_salary > 10000))

alter table test4 add constraint check (test_id > 0)

insert into test4 values (10,'suraj', 'suraj.mech904@gmail.com', 'bangalore', 21400)

insert into test4 values (-1,'suraj', 'suraj.mech904@gmail.com', 'bangalore', 21400),
(2,'raj', 'raj.kumar@gmail.com', 'delhi', 30000),
(3,'hitesh', 'hitesh.kr@gmail.com', 'bangalore', 54010);

create table if not exists test5 (
test_id int ,
test_name varchar(30),
test_mailid varchar(30), 
test_address varchar(30) check (test_address= 'bangalore'),
test_salary int check(test_salary > 10000))

insert into test4 values (1,'suraj', 'suraj.mech904@gmail.com', 'bangalore', 21400)

create table if not exists test6 (
test_id int not null,
test_name varchar(30),
test_mailid varchar(30), 
test_address varchar(30) check (test_address= 'bangalore'),
test_salary int check(test_salary > 10000))

insert into test4 (test_name, test_mailid, test_address, test_salary) values ('suraj', 'suraj.mech904@gmail.com', 'bangalore', 21400);

select * from test5;

create table if not exists test7 (
test_id int not null default 0,
test_name varchar(30),
test_mailid varchar(30), 
test_address varchar(30) check (test_address= 'bangalore'),
test_salary int check(test_salary > 10000))

insert into test7 (test_name, test_mailid, test_address, test_salary) values ('suraj', 'suraj.mech904@gmail.com', 'bangalore', 21400);

select * from test7;

