create database TaiKhoanNguoiDung;
use TaiKhoanNguoiDung;
create table users(
userid varchar(10) primary key,
username varchar (100)  not null unique,
useremail varchar (100) not null unique,
password varchar(100) not null,
status varchar (20) default 'active'
);
alter table users 
add constraint check_user_status check(status in ('active','inactive','banned'));

DROP TABLE IF EXISTS users;