
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct da9055 {int dummy; } ;


 int da9055_device_exit (struct da9055*) ;
 struct da9055* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int da9055_i2c_remove(struct i2c_client *i2c)
{
 struct da9055 *da9055 = i2c_get_clientdata(i2c);

 da9055_device_exit(da9055);

 return 0;
}
