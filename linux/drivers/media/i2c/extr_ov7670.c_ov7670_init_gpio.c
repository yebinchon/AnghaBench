
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov7670_info {void* resetb_gpio; void* pwdn_gpio; } ;
struct i2c_client {int dev; } ;


 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_info (int *,char*,char*) ;
 void* devm_gpiod_get_optional (int *,char*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ov7670_init_gpio(struct i2c_client *client, struct ov7670_info *info)
{
 info->pwdn_gpio = devm_gpiod_get_optional(&client->dev, "powerdown",
   GPIOD_OUT_LOW);
 if (IS_ERR(info->pwdn_gpio)) {
  dev_info(&client->dev, "can't get %s GPIO\n", "powerdown");
  return PTR_ERR(info->pwdn_gpio);
 }

 info->resetb_gpio = devm_gpiod_get_optional(&client->dev, "reset",
   GPIOD_OUT_LOW);
 if (IS_ERR(info->resetb_gpio)) {
  dev_info(&client->dev, "can't get %s GPIO\n", "reset");
  return PTR_ERR(info->resetb_gpio);
 }

 usleep_range(3000, 5000);

 return 0;
}
