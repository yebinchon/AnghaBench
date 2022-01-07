
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct e4000_dev {int active; int regmap; struct i2c_client* client; } ;


 int dev_dbg (int *,char*,...) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static int e4000_sleep(struct e4000_dev *dev)
{
 struct i2c_client *client = dev->client;
 int ret;

 dev_dbg(&client->dev, "\n");

 dev->active = 0;

 ret = regmap_write(dev->regmap, 0x00, 0x00);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
