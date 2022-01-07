
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int reset_phase; } ;
struct TYPE_4__ {TYPE_1__ hw_reset; } ;
struct bnx2x_func_state_params {struct bnx2x_func_sp_obj* f_obj; TYPE_2__ params; } ;
struct bnx2x_func_sp_obj {int (* complete_cmd ) (struct bnx2x*,struct bnx2x_func_sp_obj*,int ) ;struct bnx2x_func_sp_drv_ops* drv; } ;
struct bnx2x_func_sp_drv_ops {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_F_CMD_HW_RESET ;
 int BNX2X_MSG_SP ;
 int BP_ABS_FUNC (struct bnx2x*) ;
 int DP (int ,char*,int ,int) ;



 int bnx2x_func_reset_cmn (struct bnx2x*,struct bnx2x_func_sp_drv_ops const*) ;
 int bnx2x_func_reset_func (struct bnx2x*,struct bnx2x_func_sp_drv_ops const*) ;
 int bnx2x_func_reset_port (struct bnx2x*,struct bnx2x_func_sp_drv_ops const*) ;
 int stub1 (struct bnx2x*,struct bnx2x_func_sp_obj*,int ) ;

__attribute__((used)) static inline int bnx2x_func_hw_reset(struct bnx2x *bp,
          struct bnx2x_func_state_params *params)
{
 u32 reset_phase = params->params.hw_reset.reset_phase;
 struct bnx2x_func_sp_obj *o = params->f_obj;
 const struct bnx2x_func_sp_drv_ops *drv = o->drv;

 DP(BNX2X_MSG_SP, "function %d  reset_phase %x\n", BP_ABS_FUNC(bp),
    reset_phase);

 switch (reset_phase) {
 case 130:
  bnx2x_func_reset_cmn(bp, drv);
  break;
 case 128:
  bnx2x_func_reset_port(bp, drv);
  break;
 case 129:
  bnx2x_func_reset_func(bp, drv);
  break;
 default:
  BNX2X_ERR("Unknown reset_phase (0x%x) from MCP\n",
      reset_phase);
  break;
 }


 o->complete_cmd(bp, o, BNX2X_F_CMD_HW_RESET);

 return 0;
}
