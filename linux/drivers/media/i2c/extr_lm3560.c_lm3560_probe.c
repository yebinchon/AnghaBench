
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3560_platform_data {void** max_torch_brt; void** max_flash_brt; int max_flash_timeout; int peak; } ;
struct lm3560_flash {int lock; int * dev; struct lm3560_platform_data* pdata; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 void* LM3560_FLASH_BRT_MAX ;
 int LM3560_FLASH_TOUT_MAX ;
 size_t LM3560_LED0 ;
 size_t LM3560_LED1 ;
 int LM3560_PEAK_3600mA ;
 void* LM3560_TORCH_BRT_MAX ;
 int PTR_ERR (int ) ;
 struct lm3560_platform_data* dev_get_platdata (int *) ;
 void* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm3560_flash*) ;
 int lm3560_init_device (struct lm3560_flash*) ;
 int lm3560_regmap ;
 int lm3560_subdev_init (struct lm3560_flash*,size_t,char*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int lm3560_probe(struct i2c_client *client,
   const struct i2c_device_id *devid)
{
 struct lm3560_flash *flash;
 struct lm3560_platform_data *pdata = dev_get_platdata(&client->dev);
 int rval;

 flash = devm_kzalloc(&client->dev, sizeof(*flash), GFP_KERNEL);
 if (flash == ((void*)0))
  return -ENOMEM;

 flash->regmap = devm_regmap_init_i2c(client, &lm3560_regmap);
 if (IS_ERR(flash->regmap)) {
  rval = PTR_ERR(flash->regmap);
  return rval;
 }


 if (pdata == ((void*)0)) {
  pdata = devm_kzalloc(&client->dev, sizeof(*pdata), GFP_KERNEL);
  if (pdata == ((void*)0))
   return -ENODEV;
  pdata->peak = LM3560_PEAK_3600mA;
  pdata->max_flash_timeout = LM3560_FLASH_TOUT_MAX;

  pdata->max_flash_brt[LM3560_LED0] = LM3560_FLASH_BRT_MAX;
  pdata->max_torch_brt[LM3560_LED0] = LM3560_TORCH_BRT_MAX;

  pdata->max_flash_brt[LM3560_LED1] = LM3560_FLASH_BRT_MAX;
  pdata->max_torch_brt[LM3560_LED1] = LM3560_TORCH_BRT_MAX;
 }
 flash->pdata = pdata;
 flash->dev = &client->dev;
 mutex_init(&flash->lock);

 rval = lm3560_subdev_init(flash, LM3560_LED0, "lm3560-led0");
 if (rval < 0)
  return rval;

 rval = lm3560_subdev_init(flash, LM3560_LED1, "lm3560-led1");
 if (rval < 0)
  return rval;

 rval = lm3560_init_device(flash);
 if (rval < 0)
  return rval;

 i2c_set_clientdata(client, flash);

 return 0;
}
