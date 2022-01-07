
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda10071_dev {int dummy; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct tda10071_dev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct tda10071_dev*) ;

__attribute__((used)) static int tda10071_remove(struct i2c_client *client)
{
 struct tda10071_dev *dev = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 kfree(dev);
 return 0;
}
