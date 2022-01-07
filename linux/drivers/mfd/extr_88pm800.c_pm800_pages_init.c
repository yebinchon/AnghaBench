
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm80x_subchip {void* gpadc_page; void* regmap_gpadc; int gpadc_page_addr; void* power_page; void* regmap_power; int power_page_addr; } ;
struct pm80x_chip {int dev; struct pm80x_subchip* subchip; struct i2c_client* client; } ;
struct i2c_client {int adapter; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int ,char*,int) ;
 void* devm_regmap_init_i2c (void*,int *) ;
 void* i2c_new_dummy_device (int ,int ) ;
 int i2c_set_clientdata (void*,struct pm80x_chip*) ;
 int pm80x_regmap_config ;

__attribute__((used)) static int pm800_pages_init(struct pm80x_chip *chip)
{
 struct pm80x_subchip *subchip;
 struct i2c_client *client = chip->client;

 int ret = 0;

 subchip = chip->subchip;
 if (!subchip || !subchip->power_page_addr || !subchip->gpadc_page_addr)
  return -ENODEV;


 subchip->power_page = i2c_new_dummy_device(client->adapter,
         subchip->power_page_addr);
 if (IS_ERR(subchip->power_page)) {
  ret = PTR_ERR(subchip->power_page);
  goto out;
 }

 subchip->regmap_power = devm_regmap_init_i2c(subchip->power_page,
           &pm80x_regmap_config);
 if (IS_ERR(subchip->regmap_power)) {
  ret = PTR_ERR(subchip->regmap_power);
  dev_err(chip->dev,
   "Failed to allocate regmap_power: %d\n", ret);
  goto out;
 }

 i2c_set_clientdata(subchip->power_page, chip);


 subchip->gpadc_page = i2c_new_dummy_device(client->adapter,
         subchip->gpadc_page_addr);
 if (IS_ERR(subchip->gpadc_page)) {
  ret = PTR_ERR(subchip->gpadc_page);
  goto out;
 }

 subchip->regmap_gpadc = devm_regmap_init_i2c(subchip->gpadc_page,
           &pm80x_regmap_config);
 if (IS_ERR(subchip->regmap_gpadc)) {
  ret = PTR_ERR(subchip->regmap_gpadc);
  dev_err(chip->dev,
   "Failed to allocate regmap_gpadc: %d\n", ret);
  goto out;
 }
 i2c_set_clientdata(subchip->gpadc_page, chip);

out:
 return ret;
}
