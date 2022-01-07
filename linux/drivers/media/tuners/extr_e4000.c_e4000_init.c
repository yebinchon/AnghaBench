
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct e4000_dev {int active; int regmap; struct i2c_client* client; } ;


 int dev_dbg (int *,char*,...) ;
 int regmap_bulk_write (int ,int,char*,int) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static int e4000_init(struct e4000_dev *dev)
{
 struct i2c_client *client = dev->client;
 int ret;

 dev_dbg(&client->dev, "\n");


 ret = regmap_write(dev->regmap, 0x00, 0x01);
 if (ret)
  goto err;


 ret = regmap_write(dev->regmap, 0x06, 0x00);
 if (ret)
  goto err;

 ret = regmap_write(dev->regmap, 0x7a, 0x96);
 if (ret)
  goto err;


 ret = regmap_bulk_write(dev->regmap, 0x7e, "\x01\xfe", 2);
 if (ret)
  goto err;

 ret = regmap_write(dev->regmap, 0x82, 0x00);
 if (ret)
  goto err;

 ret = regmap_write(dev->regmap, 0x24, 0x05);
 if (ret)
  goto err;

 ret = regmap_bulk_write(dev->regmap, 0x87, "\x20\x01", 2);
 if (ret)
  goto err;

 ret = regmap_bulk_write(dev->regmap, 0x9f, "\x7f\x07", 2);
 if (ret)
  goto err;


 ret = regmap_write(dev->regmap, 0x2d, 0x1f);
 if (ret)
  goto err;

 ret = regmap_bulk_write(dev->regmap, 0x70, "\x01\x01", 2);
 if (ret)
  goto err;


 ret = regmap_write(dev->regmap, 0x1a, 0x17);
 if (ret)
  goto err;

 ret = regmap_write(dev->regmap, 0x1f, 0x1a);
 if (ret)
  goto err;

 dev->active = 1;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
