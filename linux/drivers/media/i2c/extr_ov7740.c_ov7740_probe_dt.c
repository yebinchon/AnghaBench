
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov7740 {void* pwdn_gpio; void* resetb_gpio; } ;
struct i2c_client {int dev; } ;


 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_info (int *,char*,char*) ;
 void* devm_gpiod_get_optional (int *,char*,int ) ;

__attribute__((used)) static int ov7740_probe_dt(struct i2c_client *client,
      struct ov7740 *ov7740)
{
 ov7740->resetb_gpio = devm_gpiod_get_optional(&client->dev, "reset",
   GPIOD_OUT_HIGH);
 if (IS_ERR(ov7740->resetb_gpio)) {
  dev_info(&client->dev, "can't get %s GPIO\n", "reset");
  return PTR_ERR(ov7740->resetb_gpio);
 }

 ov7740->pwdn_gpio = devm_gpiod_get_optional(&client->dev, "powerdown",
   GPIOD_OUT_LOW);
 if (IS_ERR(ov7740->pwdn_gpio)) {
  dev_info(&client->dev, "can't get %s GPIO\n", "powerdown");
  return PTR_ERR(ov7740->pwdn_gpio);
 }

 return 0;
}
