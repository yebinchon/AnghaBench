
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm80x_platform_data {int (* plat_config ) (struct pm80x_chip*,struct pm80x_platform_data*) ;} ;
struct pm80x_chip {int * dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*) ;
 struct pm80x_platform_data* dev_get_platdata (int *) ;
 int device_805_init (struct pm80x_chip*) ;
 struct pm80x_chip* i2c_get_clientdata (struct i2c_client*) ;
 int pm80x_deinit () ;
 int pm80x_init (struct i2c_client*) ;
 int stub1 (struct pm80x_chip*,struct pm80x_platform_data*) ;

__attribute__((used)) static int pm805_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 int ret = 0;
 struct pm80x_chip *chip;
 struct pm80x_platform_data *pdata = dev_get_platdata(&client->dev);

 ret = pm80x_init(client);
 if (ret) {
  dev_err(&client->dev, "pm805_init fail!\n");
  goto out_init;
 }

 chip = i2c_get_clientdata(client);

 ret = device_805_init(chip);
 if (ret) {
  dev_err(chip->dev, "Failed to initialize 88pm805 devices\n");
  goto err_805_init;
 }

 if (pdata && pdata->plat_config)
  pdata->plat_config(chip, pdata);

err_805_init:
 pm80x_deinit();
out_init:
 return ret;
}
