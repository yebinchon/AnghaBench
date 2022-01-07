
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov965x {void** gpios; int regmap; } ;
struct device {int dummy; } ;


 int GPIOD_OUT_HIGH ;
 size_t GPIO_PWDN ;
 size_t GPIO_RST ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_info (struct device*,char*,char*) ;
 void* devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct device* regmap_get_device (int ) ;

__attribute__((used)) static int ov965x_configure_gpios(struct ov965x *ov965x)
{
 struct device *dev = regmap_get_device(ov965x->regmap);

 ov965x->gpios[GPIO_PWDN] = devm_gpiod_get_optional(dev, "powerdown",
       GPIOD_OUT_HIGH);
 if (IS_ERR(ov965x->gpios[GPIO_PWDN])) {
  dev_info(dev, "can't get %s GPIO\n", "powerdown");
  return PTR_ERR(ov965x->gpios[GPIO_PWDN]);
 }

 ov965x->gpios[GPIO_RST] = devm_gpiod_get_optional(dev, "reset",
       GPIOD_OUT_HIGH);
 if (IS_ERR(ov965x->gpios[GPIO_RST])) {
  dev_info(dev, "can't get %s GPIO\n", "reset");
  return PTR_ERR(ov965x->gpios[GPIO_RST]);
 }

 return 0;
}
