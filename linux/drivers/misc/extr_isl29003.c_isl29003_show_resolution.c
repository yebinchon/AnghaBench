
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int isl29003_get_resolution (struct i2c_client*) ;
 int sprintf (char*,char*,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t isl29003_show_resolution(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);

 return sprintf(buf, "%d\n", isl29003_get_resolution(client));
}
