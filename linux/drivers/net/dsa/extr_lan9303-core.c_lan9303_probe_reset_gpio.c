
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan9303 {int reset_duration; int dev; int reset_gpio; } ;
struct device_node {int dummy; } ;


 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_dbg (int ,char*) ;
 int devm_gpiod_get_optional (int ,char*,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int lan9303_probe_reset_gpio(struct lan9303 *chip,
         struct device_node *np)
{
 chip->reset_gpio = devm_gpiod_get_optional(chip->dev, "reset",
         GPIOD_OUT_LOW);
 if (IS_ERR(chip->reset_gpio))
  return PTR_ERR(chip->reset_gpio);

 if (!chip->reset_gpio) {
  dev_dbg(chip->dev, "No reset GPIO defined\n");
  return 0;
 }

 chip->reset_duration = 200;

 if (np) {
  of_property_read_u32(np, "reset-duration",
         &chip->reset_duration);
 } else {
  dev_dbg(chip->dev, "reset duration defaults to 200 ms\n");
 }


 if (chip->reset_duration > 1000)
  chip->reset_duration = 1000;

 return 0;
}
