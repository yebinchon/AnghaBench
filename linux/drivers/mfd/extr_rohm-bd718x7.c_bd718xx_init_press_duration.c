
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int of_node; } ;
struct TYPE_2__ {int regmap; struct device* dev; } ;
struct bd718xx {TYPE_1__ chip; } ;


 int BD718XX_PWRBTN_PRESS_DURATION_MASK ;
 int BD718XX_REG_PWRONCONFIG0 ;
 int BD718XX_REG_PWRONCONFIG1 ;
 int dev_err (struct device*,char*) ;
 int min (unsigned int,int) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int bd718xx_init_press_duration(struct bd718xx *bd718xx)
{
 struct device* dev = bd718xx->chip.dev;
 u32 short_press_ms, long_press_ms;
 u32 short_press_value, long_press_value;
 int ret;

 ret = of_property_read_u32(dev->of_node, "rohm,short-press-ms",
       &short_press_ms);
 if (!ret) {
  short_press_value = min(15u, (short_press_ms + 250) / 500);
  ret = regmap_update_bits(bd718xx->chip.regmap,
      BD718XX_REG_PWRONCONFIG0,
      BD718XX_PWRBTN_PRESS_DURATION_MASK,
      short_press_value);
  if (ret) {
   dev_err(dev, "Failed to init pwron short press\n");
   return ret;
  }
 }

 ret = of_property_read_u32(dev->of_node, "rohm,long-press-ms",
       &long_press_ms);
 if (!ret) {
  long_press_value = min(15u, (long_press_ms + 500) / 1000);
  ret = regmap_update_bits(bd718xx->chip.regmap,
      BD718XX_REG_PWRONCONFIG1,
      BD718XX_PWRBTN_PRESS_DURATION_MASK,
      long_press_value);
  if (ret) {
   dev_err(dev, "Failed to init pwron long press\n");
   return ret;
  }
 }

 return 0;
}
