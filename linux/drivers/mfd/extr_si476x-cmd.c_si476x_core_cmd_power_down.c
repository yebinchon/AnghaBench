
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si476x_power_down_args {int dummy; } ;
struct si476x_core {int revision; } ;
struct TYPE_2__ {int (* power_down ) (struct si476x_core*,struct si476x_power_down_args*) ;} ;


 int BUG_ON (int) ;
 int SI476X_REVISION_A30 ;
 TYPE_1__* si476x_cmds_vtable ;
 int stub1 (struct si476x_core*,struct si476x_power_down_args*) ;

int si476x_core_cmd_power_down(struct si476x_core *core,
          struct si476x_power_down_args *args)
{
 BUG_ON(core->revision > SI476X_REVISION_A30 ||
        core->revision == -1);
 return si476x_cmds_vtable[core->revision].power_down(core, args);
}
