
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si476x_core {scalar_t__ power_state; int supplies; TYPE_1__* client; } ;
typedef enum si476x_power_state { ____Placeholder_si476x_power_state } si476x_power_state ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int BUG () ;
 int EINVAL ;

 scalar_t__ SI476X_POWER_INCONSISTENT ;

 int dev_err (int *,char*) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int si476x_core_start (struct si476x_core*,int) ;
 int si476x_core_stop (struct si476x_core*,int) ;
 int udelay (int) ;

int si476x_core_set_power_state(struct si476x_core *core,
    enum si476x_power_state next_state)
{





 int err = 0;

 if (core->power_state == SI476X_POWER_INCONSISTENT) {
  dev_err(&core->client->dev,
   "The device in inconsistent power state\n");
  return -EINVAL;
 }

 if (next_state != core->power_state) {
  switch (next_state) {
  case 128:
   err = regulator_bulk_enable(ARRAY_SIZE(core->supplies),
          core->supplies);
   if (err < 0) {
    core->power_state = SI476X_POWER_INCONSISTENT;
    break;
   }





   udelay(100);

   err = si476x_core_start(core, 0);
   if (err < 0)
    goto disable_regulators;

   core->power_state = next_state;
   break;

  case 129:
   core->power_state = next_state;
   err = si476x_core_stop(core, 0);
   if (err < 0)
    core->power_state = SI476X_POWER_INCONSISTENT;
disable_regulators:
   err = regulator_bulk_disable(ARRAY_SIZE(core->supplies),
           core->supplies);
   if (err < 0)
    core->power_state = SI476X_POWER_INCONSISTENT;
   break;
  default:
   BUG();
  }
 }

 return err;
}
