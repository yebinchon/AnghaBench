
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regmap_gen; } ;


 int MAX8907_MASK_POWER_OFF ;
 int MAX8907_REG_RESET_CNFG ;
 TYPE_1__* max8907_pm_off ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void max8907_power_off(void)
{
 regmap_update_bits(max8907_pm_off->regmap_gen, MAX8907_REG_RESET_CNFG,
   MAX8907_MASK_POWER_OFF, MAX8907_MASK_POWER_OFF);
}
