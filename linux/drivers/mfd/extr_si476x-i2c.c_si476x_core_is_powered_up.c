
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si476x_core {scalar_t__ power_state; } ;


 scalar_t__ SI476X_POWER_UP_FULL ;

bool si476x_core_is_powered_up(struct si476x_core *core)
{
 return core->power_state == SI476X_POWER_UP_FULL;
}
