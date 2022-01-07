
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * minor; int major; } ;
struct si476x_func_info {TYPE_1__ firmware; int func; } ;
struct si476x_core {int revision; } ;


 int SI476X_POWER_DOWN ;
 int SI476X_POWER_UP_FULL ;
 int si476x_core_cmd_func_info (struct si476x_core*,struct si476x_func_info*) ;
 int si476x_core_fwver_to_revision (struct si476x_core*,int ,int ,int ,int ) ;
 int si476x_core_lock (struct si476x_core*) ;
 int si476x_core_set_power_state (struct si476x_core*,int ) ;
 int si476x_core_unlock (struct si476x_core*) ;

__attribute__((used)) static int si476x_core_get_revision_info(struct si476x_core *core)
{
 int rval;
 struct si476x_func_info info;

 si476x_core_lock(core);
 rval = si476x_core_set_power_state(core, SI476X_POWER_UP_FULL);
 if (rval < 0)
  goto exit;

 rval = si476x_core_cmd_func_info(core, &info);
 if (rval < 0)
  goto power_down;

 core->revision = si476x_core_fwver_to_revision(core, info.func,
             info.firmware.major,
             info.firmware.minor[0],
             info.firmware.minor[1]);
power_down:
 si476x_core_set_power_state(core, SI476X_POWER_DOWN);
exit:
 si476x_core_unlock(core);

 return rval;
}
