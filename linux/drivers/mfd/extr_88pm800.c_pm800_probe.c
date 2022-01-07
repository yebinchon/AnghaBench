
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm80x_subchip {scalar_t__ gpadc_page_addr; scalar_t__ power_page_addr; } ;
struct pm80x_platform_data {int (* plat_config ) (struct pm80x_chip*,struct pm80x_platform_data*) ;} ;
struct pm80x_chip {int * dev; struct pm80x_subchip* subchip; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; scalar_t__ addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 struct pm80x_platform_data* dev_get_platdata (int *) ;
 int device_800_init (struct pm80x_chip*,struct pm80x_platform_data*) ;
 struct pm80x_subchip* devm_kzalloc (int *,int,int ) ;
 struct pm80x_chip* i2c_get_clientdata (struct i2c_client*) ;
 int pm800_pages_exit (struct pm80x_chip*) ;
 int pm800_pages_init (struct pm80x_chip*) ;
 int pm80x_deinit () ;
 int pm80x_init (struct i2c_client*) ;
 int stub1 (struct pm80x_chip*,struct pm80x_platform_data*) ;

__attribute__((used)) static int pm800_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 int ret = 0;
 struct pm80x_chip *chip;
 struct pm80x_platform_data *pdata = dev_get_platdata(&client->dev);
 struct pm80x_subchip *subchip;

 ret = pm80x_init(client);
 if (ret) {
  dev_err(&client->dev, "pm800_init fail\n");
  goto out_init;
 }

 chip = i2c_get_clientdata(client);


 subchip =
     devm_kzalloc(&client->dev, sizeof(struct pm80x_subchip),
    GFP_KERNEL);
 if (!subchip) {
  ret = -ENOMEM;
  goto err_subchip_alloc;
 }


 subchip->power_page_addr = client->addr + 1;
 subchip->gpadc_page_addr = client->addr + 2;
 chip->subchip = subchip;

 ret = pm800_pages_init(chip);
 if (ret) {
  dev_err(&client->dev, "pm800_pages_init failed!\n");
  goto err_device_init;
 }

 ret = device_800_init(chip, pdata);
 if (ret) {
  dev_err(chip->dev, "Failed to initialize 88pm800 devices\n");
  goto err_device_init;
 }

 if (pdata && pdata->plat_config)
  pdata->plat_config(chip, pdata);

 return 0;

err_device_init:
 pm800_pages_exit(chip);
err_subchip_alloc:
 pm80x_deinit();
out_init:
 return ret;
}
