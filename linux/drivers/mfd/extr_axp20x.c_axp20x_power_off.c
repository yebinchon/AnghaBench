
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ variant; int regmap; } ;


 int AXP20X_OFF ;
 int AXP20X_OFF_CTRL ;
 scalar_t__ AXP288_ID ;
 TYPE_1__* axp20x_pm_power_off ;
 int msleep (int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void axp20x_power_off(void)
{
 if (axp20x_pm_power_off->variant == AXP288_ID)
  return;

 regmap_write(axp20x_pm_power_off->regmap, AXP20X_OFF_CTRL,
       AXP20X_OFF);


 msleep(500);
}
