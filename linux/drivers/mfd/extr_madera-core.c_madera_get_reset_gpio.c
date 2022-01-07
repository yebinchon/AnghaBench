
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct gpio_desc* reset; } ;
struct madera {TYPE_1__ pdata; int dev; } ;
struct gpio_desc {int dummy; } ;


 int EPROBE_DEFER ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 struct gpio_desc* devm_gpiod_get_optional (int ,char*,int ) ;

__attribute__((used)) static int madera_get_reset_gpio(struct madera *madera)
{
 struct gpio_desc *reset;
 int ret;

 if (madera->pdata.reset)
  return 0;

 reset = devm_gpiod_get_optional(madera->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(reset)) {
  ret = PTR_ERR(reset);
  if (ret != -EPROBE_DEFER)
   dev_err(madera->dev, "Failed to request /RESET: %d\n",
    ret);
  return ret;
 }






 if (!reset)
  dev_warn(madera->dev,
    "Running without reset GPIO is not recommended\n");

 madera->pdata.reset = reset;

 return 0;
}
