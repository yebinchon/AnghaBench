
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* hi; void* lo; } ;
struct set_timesync_ramrod_data {TYPE_2__ offset_delta; int drift_adjust_period; int drift_adjust_value; int add_sub_drift_adjust_value; int offset_cmd; int drift_adjust_cmd; } ;
struct bnx2x_func_set_timesync_params {int offset_delta; int drift_adjust_period; int drift_adjust_value; int add_sub_drift_adjust_value; int offset_cmd; int drift_adjust_cmd; } ;
struct TYPE_3__ {struct bnx2x_func_set_timesync_params set_timesync; } ;
struct bnx2x_func_state_params {TYPE_1__ params; struct bnx2x_func_sp_obj* f_obj; } ;
struct bnx2x_func_sp_obj {int rdata_mapping; scalar_t__ rdata; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*,int ,int ,int ,int ,int ,void*,void*) ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_SET_TIMESYNC ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;
 void* cpu_to_le32 (int ) ;
 int memset (struct set_timesync_ramrod_data*,int ,int) ;

__attribute__((used)) static inline
int bnx2x_func_send_set_timesync(struct bnx2x *bp,
     struct bnx2x_func_state_params *params)
{
 struct bnx2x_func_sp_obj *o = params->f_obj;
 struct set_timesync_ramrod_data *rdata =
  (struct set_timesync_ramrod_data *)o->rdata;
 dma_addr_t data_mapping = o->rdata_mapping;
 struct bnx2x_func_set_timesync_params *set_timesync_params =
  &params->params.set_timesync;

 memset(rdata, 0, sizeof(*rdata));


 rdata->drift_adjust_cmd = set_timesync_params->drift_adjust_cmd;
 rdata->offset_cmd = set_timesync_params->offset_cmd;
 rdata->add_sub_drift_adjust_value =
  set_timesync_params->add_sub_drift_adjust_value;
 rdata->drift_adjust_value = set_timesync_params->drift_adjust_value;
 rdata->drift_adjust_period = set_timesync_params->drift_adjust_period;
 rdata->offset_delta.lo =
  cpu_to_le32(U64_LO(set_timesync_params->offset_delta));
 rdata->offset_delta.hi =
  cpu_to_le32(U64_HI(set_timesync_params->offset_delta));

 DP(BNX2X_MSG_SP, "Set timesync command params: drift_cmd = %d, offset_cmd = %d, add_sub_drift = %d, drift_val = %d, drift_period = %d, offset_lo = %d, offset_hi = %d\n",
    rdata->drift_adjust_cmd, rdata->offset_cmd,
    rdata->add_sub_drift_adjust_value, rdata->drift_adjust_value,
    rdata->drift_adjust_period, rdata->offset_delta.lo,
    rdata->offset_delta.hi);

 return bnx2x_sp_post(bp, RAMROD_CMD_ID_COMMON_SET_TIMESYNC, 0,
        U64_HI(data_mapping),
        U64_LO(data_mapping), NONE_CONNECTION_TYPE);
}
