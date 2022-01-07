
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_driver {int dummy; } ;


 int i2c_del_driver (struct i2c_driver*) ;

void mlxsw_i2c_driver_unregister(struct i2c_driver *i2c_driver)
{
 i2c_del_driver(i2c_driver);
}
