
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65910 {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ TPS65910 ;
 unsigned int TPS65910_VDAC ;
 unsigned int TPS65910_VIO ;
 unsigned int TPS65911_VDDCTRL_OP ;
 unsigned int TPS65911_VDDCTRL_SR ;
 struct tps65910* dev_get_drvdata (struct device*) ;
 scalar_t__ tps65910_chip_id (struct tps65910*) ;

__attribute__((used)) static bool is_volatile_reg(struct device *dev, unsigned int reg)
{
 struct tps65910 *tps65910 = dev_get_drvdata(dev);






 if ((reg >= TPS65910_VIO) && (reg <= TPS65910_VDAC)) {

  if (tps65910_chip_id(tps65910) == TPS65910)
   if ((reg == TPS65911_VDDCTRL_OP) ||
    (reg == TPS65911_VDDCTRL_SR))
    return 1;
  return 0;
 }
 return 1;
}
