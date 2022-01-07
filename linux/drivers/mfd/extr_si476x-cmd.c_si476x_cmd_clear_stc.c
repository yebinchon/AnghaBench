
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si476x_rsq_status_args {int primary; int rsqack; int attune; int cancel; int stcack; } ;
struct TYPE_2__ {int func; } ;
struct si476x_core {TYPE_1__ power_up_parameters; } ;


 int EINVAL ;


 int si476x_core_cmd_am_rsq_status (struct si476x_core*,struct si476x_rsq_status_args*,int *) ;
 int si476x_core_cmd_fm_rsq_status (struct si476x_core*,struct si476x_rsq_status_args*,int *) ;

__attribute__((used)) static int si476x_cmd_clear_stc(struct si476x_core *core)
{
 int err;
 struct si476x_rsq_status_args args = {
  .primary = 0,
  .rsqack = 0,
  .attune = 0,
  .cancel = 0,
  .stcack = 1,
 };

 switch (core->power_up_parameters.func) {
 case 128:
  err = si476x_core_cmd_fm_rsq_status(core, &args, ((void*)0));
  break;
 case 129:
  err = si476x_core_cmd_am_rsq_status(core, &args, ((void*)0));
  break;
 default:
  err = -EINVAL;
 }

 return err;
}
