
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si476x_core {int revision; } ;
typedef enum si476x_intb_config { ____Placeholder_si476x_intb_config } si476x_intb_config ;
typedef enum si476x_a1_config { ____Placeholder_si476x_a1_config } si476x_a1_config ;
struct TYPE_2__ {int (* intb_pin_cfg ) (struct si476x_core*,int,int) ;} ;


 int BUG_ON (int) ;
 int SI476X_REVISION_A30 ;
 TYPE_1__* si476x_cmds_vtable ;
 int stub1 (struct si476x_core*,int,int) ;

int si476x_core_cmd_intb_pin_cfg(struct si476x_core *core,
       enum si476x_intb_config intb,
       enum si476x_a1_config a1)
{
 BUG_ON(core->revision > SI476X_REVISION_A30 ||
        core->revision == -1);

 return si476x_cmds_vtable[core->revision].intb_pin_cfg(core, intb, a1);
}
