
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_func_set_timesync_params {int drift_adjust_value; int drift_adjust_period; int add_sub_drift_adjust_value; int offset_cmd; int drift_adjust_cmd; } ;
struct TYPE_2__ {struct bnx2x_func_set_timesync_params set_timesync; } ;
struct bnx2x_func_state_params {int cmd; int * f_obj; int ramrod_flags; TYPE_1__ params; int * member_0; } ;
struct bnx2x {int func_obj; } ;


 int BNX2X_F_CMD_SET_TIMESYNC ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_RETRY ;
 int TS_ADD_VALUE ;
 int TS_DRIFT_ADJUST_SET ;
 int TS_OFFSET_KEEP ;
 int TS_SUB_VALUE ;
 int __set_bit (int ,int *) ;
 int bnx2x_func_state_change (struct bnx2x*,struct bnx2x_func_state_params*) ;

__attribute__((used)) static int bnx2x_send_update_drift_ramrod(struct bnx2x *bp, int drift_dir,
       int best_val, int best_period)
{
 struct bnx2x_func_state_params func_params = {((void*)0)};
 struct bnx2x_func_set_timesync_params *set_timesync_params =
  &func_params.params.set_timesync;


 __set_bit(RAMROD_COMP_WAIT, &func_params.ramrod_flags);
 __set_bit(RAMROD_RETRY, &func_params.ramrod_flags);

 func_params.f_obj = &bp->func_obj;
 func_params.cmd = BNX2X_F_CMD_SET_TIMESYNC;


 set_timesync_params->drift_adjust_cmd = TS_DRIFT_ADJUST_SET;
 set_timesync_params->offset_cmd = TS_OFFSET_KEEP;
 set_timesync_params->add_sub_drift_adjust_value =
  drift_dir ? TS_ADD_VALUE : TS_SUB_VALUE;
 set_timesync_params->drift_adjust_value = best_val;
 set_timesync_params->drift_adjust_period = best_period;

 return bnx2x_func_state_change(bp, &func_params);
}
