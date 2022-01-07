
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct axp20x_dev {int dummy; } ;


 int axp20x_device_remove (struct axp20x_dev*) ;
 struct axp20x_dev* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int axp20x_i2c_remove(struct i2c_client *i2c)
{
 struct axp20x_dev *axp20x = i2c_get_clientdata(i2c);

 return axp20x_device_remove(axp20x);
}
