
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc3589x {int dev; } ;
struct i2c_client {int dummy; } ;


 struct tc3589x* i2c_get_clientdata (struct i2c_client*) ;
 int mfd_remove_devices (int ) ;

__attribute__((used)) static int tc3589x_remove(struct i2c_client *client)
{
 struct tc3589x *tc3589x = i2c_get_clientdata(client);

 mfd_remove_devices(tc3589x->dev);

 return 0;
}
