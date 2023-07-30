Create database SHOP

Use SHOP

go

Create Table Customers
(
Customer_id int identity (1,1) primary key,
Customer_name varchar(150) not null,
Customer_email varchar(100) not null,
Customer_adress varchar(200) not null,
);

Create Table Products
(
Product_id int identity (1,1) primary key,
Product_name varchar(100) not null,
Product_price decimal check(Product_price > 0) not null,
);

Create Table Orders
(
Order_id int identity (1,1) primary key,
Customer_id int not null,
Product_id int not null,
Quantity int not null,
Order_date date
constraint fk_Orders_Customers foreign key(Customer_id) references Customers (Customer_id),
constraint fk_Orders_Products foreign key(Product_id) references Products(Product_id),
);