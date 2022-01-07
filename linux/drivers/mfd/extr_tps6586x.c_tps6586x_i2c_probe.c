
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct tps6586x_platform_data {scalar_t__ pm_off; int irq_base; } ;
struct tps6586x {int version; TYPE_1__* dev; int irq_domain; int regmap; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {scalar_t__ of_node; } ;
struct i2c_client {int irq; TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int EIO ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TPS6586X_VERSIONCRC ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct tps6586x_platform_data* dev_get_platdata (TYPE_1__*) ;
 struct tps6586x* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int free_irq (int ,struct tps6586x*) ;
 int i2c_set_clientdata (struct i2c_client*,struct tps6586x*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int mfd_add_devices (TYPE_1__*,int,int ,int ,int *,int ,int ) ;
 int mfd_remove_devices (TYPE_1__*) ;
 scalar_t__ pm_power_off ;
 int tps6586x_add_subdevs (struct tps6586x*,struct tps6586x_platform_data*) ;
 int tps6586x_cell ;
 TYPE_1__* tps6586x_dev ;
 int tps6586x_irq_init (struct tps6586x*,int ,int ) ;
 struct tps6586x_platform_data* tps6586x_parse_dt (struct i2c_client*) ;
 scalar_t__ tps6586x_power_off ;
 int tps6586x_print_version (struct i2c_client*,int) ;
 int tps6586x_regmap_config ;

__attribute__((used)) static int tps6586x_i2c_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct tps6586x_platform_data *pdata = dev_get_platdata(&client->dev);
 struct tps6586x *tps6586x;
 int ret;
 int version;

 if (!pdata && client->dev.of_node)
  pdata = tps6586x_parse_dt(client);

 if (!pdata) {
  dev_err(&client->dev, "tps6586x requires platform data\n");
  return -ENOTSUPP;
 }

 version = i2c_smbus_read_byte_data(client, TPS6586X_VERSIONCRC);
 if (version < 0) {
  dev_err(&client->dev, "Chip ID read failed: %d\n", version);
  return -EIO;
 }

 tps6586x = devm_kzalloc(&client->dev, sizeof(*tps6586x), GFP_KERNEL);
 if (!tps6586x)
  return -ENOMEM;

 tps6586x->version = version;
 tps6586x_print_version(client, tps6586x->version);

 tps6586x->client = client;
 tps6586x->dev = &client->dev;
 i2c_set_clientdata(client, tps6586x);

 tps6586x->regmap = devm_regmap_init_i2c(client,
     &tps6586x_regmap_config);
 if (IS_ERR(tps6586x->regmap)) {
  ret = PTR_ERR(tps6586x->regmap);
  dev_err(&client->dev, "regmap init failed: %d\n", ret);
  return ret;
 }


 if (client->irq) {
  ret = tps6586x_irq_init(tps6586x, client->irq,
     pdata->irq_base);
  if (ret) {
   dev_err(&client->dev, "IRQ init failed: %d\n", ret);
   return ret;
  }
 }

 ret = mfd_add_devices(tps6586x->dev, -1,
         tps6586x_cell, ARRAY_SIZE(tps6586x_cell),
         ((void*)0), 0, tps6586x->irq_domain);
 if (ret < 0) {
  dev_err(&client->dev, "mfd_add_devices failed: %d\n", ret);
  goto err_mfd_add;
 }

 ret = tps6586x_add_subdevs(tps6586x, pdata);
 if (ret) {
  dev_err(&client->dev, "add devices failed: %d\n", ret);
  goto err_add_devs;
 }

 if (pdata->pm_off && !pm_power_off) {
  tps6586x_dev = &client->dev;
  pm_power_off = tps6586x_power_off;
 }

 return 0;

err_add_devs:
 mfd_remove_devices(tps6586x->dev);
err_mfd_add:
 if (client->irq)
  free_irq(client->irq, tps6586x);
 return ret;
}
