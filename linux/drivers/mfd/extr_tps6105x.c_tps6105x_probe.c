
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6105x_platform_data {int mode; } ;
struct tps6105x {struct tps6105x_platform_data* pdata; struct i2c_client* client; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;




 int dev_err (int *,char*) ;
 struct tps6105x_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 struct tps6105x* devm_kmalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct tps6105x*) ;
 int mfd_remove_devices (int *) ;
 int tps6105x_add_device (struct tps6105x*,int *) ;
 int tps6105x_flash_cell ;
 int tps6105x_gpio_cell ;
 int tps6105x_leds_cell ;
 int tps6105x_regmap_config ;
 int tps6105x_regulator_cell ;
 int tps6105x_startup (struct tps6105x*) ;

__attribute__((used)) static int tps6105x_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct tps6105x *tps6105x;
 struct tps6105x_platform_data *pdata;
 int ret;

 pdata = dev_get_platdata(&client->dev);
 if (!pdata) {
  dev_err(&client->dev, "missing platform data\n");
  return -ENODEV;
 }

 tps6105x = devm_kmalloc(&client->dev, sizeof(*tps6105x), GFP_KERNEL);
 if (!tps6105x)
  return -ENOMEM;

 tps6105x->regmap = devm_regmap_init_i2c(client, &tps6105x_regmap_config);
 if (IS_ERR(tps6105x->regmap))
  return PTR_ERR(tps6105x->regmap);

 i2c_set_clientdata(client, tps6105x);
 tps6105x->client = client;
 tps6105x->pdata = pdata;

 ret = tps6105x_startup(tps6105x);
 if (ret) {
  dev_err(&client->dev, "chip initialization failed\n");
  return ret;
 }

 ret = tps6105x_add_device(tps6105x, &tps6105x_gpio_cell);
 if (ret)
  return ret;

 switch (pdata->mode) {
 case 131:
  dev_info(&client->dev,
    "present, not used for anything, only GPIO\n");
  break;
 case 130:
  ret = tps6105x_add_device(tps6105x, &tps6105x_leds_cell);
  break;
 case 129:
  ret = tps6105x_add_device(tps6105x, &tps6105x_flash_cell);
  break;
 case 128:
  ret = tps6105x_add_device(tps6105x, &tps6105x_regulator_cell);
  break;
 default:
  dev_warn(&client->dev, "invalid mode: %d\n", pdata->mode);
  break;
 }

 if (ret)
  mfd_remove_devices(&client->dev);

 return ret;
}
