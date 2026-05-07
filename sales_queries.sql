CREATE DATABASE Sales_project;
USE Sales_project;
CREATE TABLE orders (
    OrderDate VARCHAR(50),
    CustomerName VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Region VARCHAR(50),
    Category VARCHAR(50),
    SubCategory VARCHAR(50),
    ProductName VARCHAR(200),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(5,2),
    Profit DECIMAL(10,2)
    );
    
    SELECT * FROM orders;
    #View Only First 10 Rows
    SELECT * FROM orders LIMIT 10;
    
    # 1. Total Sales
    SELECT SUM(Sales) as TotalSales FROM orders;
    
    # 2. Total Profit
    SELECT SUM(Profit) as TotalProfit FROM orders;
    
    # 3. Total Orders
    SELECT COUNT(*) as TotalOrders FROM orders;
    
    # 4. Total Customers
    SELECT COUNT(DISTINCT CustomerName) as TotalCustomers FROM orders;
    
    # 5. Sales by Region
    SELECT Region, 
    SUM(Sales) AS TotalSales 
    FROM orders 
    GROUP BY Region 
    ORDER BY TotalSales DESC;
    
    # 6. Profit by Region
    SELECT Region, 
    SUM(Profit) AS TotalProfit 
    FROM orders 
    GROUP BY Region  
    ORDER BY TotalProfit DESC;
    
    # 7. Top 5 Customers
    SELECT CustomerName, 
    SUM(Sales) AS TotalSales 
    FROM orders
    GROUP BY CustomerName
    ORDER BY TotalSales DESC LIMIT 5;
    
   # 8. Top 10 Products
   SELECT ProductName, 
   SUM(Sales) AS TotalSales 
   FROM orders
   GROUP BY ProductName 
   ORDER BY TotalSales DESC LIMIT 10;
   
   # 9. Monthly Sales Trend
   SELECT MONTH(OrderDate) AS MonthNumber, 
   SUM(Sales) AS TotalSales 
   FROM orders
   GROUP BY MonthNumber
   ORDER BY MonthNumber;
   
   # 10. Average Discount 
   SELECT AVG(Discount) AS AvgDiscount FROM orders;
   
   # 11. Highest Profit Product
   SELECT ProductName, 
   SUM(Profit) AS TotalProfit
   FROM orders
   GROUP BY ProductName
   ORDER BY TotalProfit DESC LIMIT 1;
   
   # 12. Loss-Making Products
   SELECT ProductName,
   SUM(Profit) AS TotalProfit 
   FROM orders
   GROUP BY ProductName 
   HAVING TotalProfit < 0;
   
   # 13. Sales by State
   SELECT State, 
   SUM(Sales) AS TotalSales 
   FROM orders
   GROUP BY State 
   ORDER BY TotalSales DESC;
   
   # 14. Segment-wise Sales
   SELECT Segment,
   SUM(Sales) AS TotalSales
   FROM orders
   GROUP BY Segment
   ORDER BY TotalSales DESC;
   
   # 15. Discount Impact on Profit
   SELECT Discount, 
   AVG(Profit) AS AvgProfit 
   FROM orders
   GROUP BY Discount
   ORDER BY Discount;
   
   select * from orders;