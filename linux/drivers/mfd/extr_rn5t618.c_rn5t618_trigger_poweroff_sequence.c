
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regmap; } ;


 int RN5T618_REPCNT ;
 int RN5T618_REPCNT_REPWRON ;
 int RN5T618_SLPCNT ;
 int RN5T618_SLPCNT_SWPWROFF ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 TYPE_1__* rn5t618_pm_power_off ;

__attribute__((used)) static void rn5t618_trigger_poweroff_sequence(bool repower)
{

 regmap_update_bits(rn5t618_pm_power_off->regmap, RN5T618_REPCNT,
      RN5T618_REPCNT_REPWRON,
      repower ? RN5T618_REPCNT_REPWRON : 0);

 regmap_update_bits(rn5t618_pm_power_off->regmap, RN5T618_SLPCNT,
      RN5T618_SLPCNT_SWPWROFF, RN5T618_SLPCNT_SWPWROFF);
}
