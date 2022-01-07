
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan9303_i2c {int chip; } ;
struct i2c_client {int dummy; } ;


 int ENODEV ;
 struct lan9303_i2c* i2c_get_clientdata (struct i2c_client*) ;
 int lan9303_remove (int *) ;

__attribute__((used)) static int lan9303_i2c_remove(struct i2c_client *client)
{
 struct lan9303_i2c *sw_dev;

 sw_dev = i2c_get_clientdata(client);
 if (!sw_dev)
  return -ENODEV;

 return lan9303_remove(&sw_dev->chip);
}
