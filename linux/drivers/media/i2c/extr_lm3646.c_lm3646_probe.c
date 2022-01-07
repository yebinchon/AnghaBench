
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3646_platform_data {int led1_flash_brt; int led1_torch_brt; int flash_timeout; } ;
struct lm3646_flash {int * dev; struct lm3646_platform_data* pdata; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int LM3646_FLASH_TOUT_MAX ;
 int LM3646_LED1_FLASH_BRT_MAX ;
 int LM3646_LED1_TORCH_BRT_MAX ;
 int PTR_ERR (int ) ;
 struct lm3646_platform_data* dev_get_platdata (int *) ;
 void* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm3646_flash*) ;
 int lm3646_init_device (struct lm3646_flash*) ;
 int lm3646_regmap ;
 int lm3646_subdev_init (struct lm3646_flash*) ;

__attribute__((used)) static int lm3646_probe(struct i2c_client *client,
   const struct i2c_device_id *devid)
{
 struct lm3646_flash *flash;
 struct lm3646_platform_data *pdata = dev_get_platdata(&client->dev);
 int rval;

 flash = devm_kzalloc(&client->dev, sizeof(*flash), GFP_KERNEL);
 if (flash == ((void*)0))
  return -ENOMEM;

 flash->regmap = devm_regmap_init_i2c(client, &lm3646_regmap);
 if (IS_ERR(flash->regmap))
  return PTR_ERR(flash->regmap);


 if (pdata == ((void*)0)) {
  pdata = devm_kzalloc(&client->dev,
         sizeof(struct lm3646_platform_data),
         GFP_KERNEL);
  if (pdata == ((void*)0))
   return -ENOMEM;

  pdata->flash_timeout = LM3646_FLASH_TOUT_MAX;
  pdata->led1_torch_brt = LM3646_LED1_TORCH_BRT_MAX;
  pdata->led1_flash_brt = LM3646_LED1_FLASH_BRT_MAX;
 }
 flash->pdata = pdata;
 flash->dev = &client->dev;

 rval = lm3646_subdev_init(flash);
 if (rval < 0)
  return rval;

 rval = lm3646_init_device(flash);
 if (rval < 0)
  return rval;

 i2c_set_clientdata(client, flash);

 return 0;
}
