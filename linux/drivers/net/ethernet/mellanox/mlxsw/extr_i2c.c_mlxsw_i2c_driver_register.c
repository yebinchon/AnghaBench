
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_driver {int remove; int probe; } ;


 int i2c_add_driver (struct i2c_driver*) ;
 int mlxsw_i2c_probe ;
 int mlxsw_i2c_remove ;

int mlxsw_i2c_driver_register(struct i2c_driver *i2c_driver)
{
 i2c_driver->probe = mlxsw_i2c_probe;
 i2c_driver->remove = mlxsw_i2c_remove;
 return i2c_add_driver(i2c_driver);
}
