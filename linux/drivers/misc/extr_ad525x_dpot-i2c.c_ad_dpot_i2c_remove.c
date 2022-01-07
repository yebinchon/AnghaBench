
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int ad_dpot_remove (int *) ;

__attribute__((used)) static int ad_dpot_i2c_remove(struct i2c_client *client)
{
 return ad_dpot_remove(&client->dev);
}
