
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si476x_core {scalar_t__ chip_id; } ;


 scalar_t__ SI476X_CHIP_SI4761 ;
 scalar_t__ SI476X_CHIP_SI4764 ;

bool si476x_core_has_am(struct si476x_core *core)
{
 return core->chip_id == SI476X_CHIP_SI4761 ||
  core->chip_id == SI476X_CHIP_SI4764;
}
