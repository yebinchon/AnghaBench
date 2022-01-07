
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ops; TYPE_2__* dev; int regmap; } ;
struct lan9303_i2c {TYPE_1__ chip; struct i2c_client* device; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {int of_node; } ;
struct i2c_client {TYPE_2__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*,int) ;
 int dev_info (TYPE_2__*,char*) ;
 struct lan9303_i2c* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct lan9303_i2c*) ;
 int lan9303_i2c_regmap_config ;
 int lan9303_indirect_phy_ops ;
 int lan9303_probe (TYPE_1__*,int ) ;

__attribute__((used)) static int lan9303_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct lan9303_i2c *sw_dev;
 int ret;

 sw_dev = devm_kzalloc(&client->dev, sizeof(struct lan9303_i2c),
         GFP_KERNEL);
 if (!sw_dev)
  return -ENOMEM;

 sw_dev->chip.regmap = devm_regmap_init_i2c(client,
         &lan9303_i2c_regmap_config);
 if (IS_ERR(sw_dev->chip.regmap)) {
  ret = PTR_ERR(sw_dev->chip.regmap);
  dev_err(&client->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }


 sw_dev->device = client;
 i2c_set_clientdata(client, sw_dev);
 sw_dev->chip.dev = &client->dev;

 sw_dev->chip.ops = &lan9303_indirect_phy_ops;

 ret = lan9303_probe(&sw_dev->chip, client->dev.of_node);
 if (ret != 0)
  return ret;

 dev_info(&client->dev, "LAN9303 I2C driver loaded successfully\n");

 return 0;
}
