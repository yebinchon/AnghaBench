
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct da9052 {int dummy; } ;


 int da9052_device_exit (struct da9052*) ;
 struct da9052* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int da9052_i2c_remove(struct i2c_client *client)
{
 struct da9052 *da9052 = i2c_get_clientdata(client);

 da9052_device_exit(da9052);
 return 0;
}
