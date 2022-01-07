
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct mt9v032 {int clk; scalar_t__ reset_gpio; int sysclk; struct regmap* regmap; } ;


 int MT9V032_CHIP_CONTROL ;
 int MT9V032_CHIP_CONTROL_MASTER_MODE ;
 int MT9V032_RESET ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int regmap_write (struct regmap*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int mt9v032_power_on(struct mt9v032 *mt9v032)
{
 struct regmap *map = mt9v032->regmap;
 int ret;

 gpiod_set_value_cansleep(mt9v032->reset_gpio, 1);

 ret = clk_set_rate(mt9v032->clk, mt9v032->sysclk);
 if (ret < 0)
  return ret;


 ret = clk_prepare_enable(mt9v032->clk);
 if (ret)
  return ret;

 udelay(1);

 if (mt9v032->reset_gpio) {
  gpiod_set_value_cansleep(mt9v032->reset_gpio, 0);






  udelay(1);
 }


 ret = regmap_write(map, MT9V032_RESET, 1);
 if (ret < 0)
  goto err;

 ret = regmap_write(map, MT9V032_RESET, 0);
 if (ret < 0)
  goto err;

 ret = regmap_write(map, MT9V032_CHIP_CONTROL,
      MT9V032_CHIP_CONTROL_MASTER_MODE);
 if (ret < 0)
  goto err;

 return 0;

err:
 clk_disable_unprepare(mt9v032->clk);
 return ret;
}
