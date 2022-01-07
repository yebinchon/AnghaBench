
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_func_tx_start_params {int dummy; } ;
struct TYPE_2__ {struct bnx2x_func_tx_start_params tx_start; } ;
struct bnx2x_func_state_params {int ramrod_flags; int cmd; int * f_obj; TYPE_1__ params; int * member_0; } ;
struct bnx2x {int func_obj; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_F_CMD_TX_START ;
 int BNX2X_MSG_DCB ;
 int DP (int ,char*) ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_RETRY ;
 int __set_bit (int ,int *) ;
 int bnx2x_dcbx_fw_struct (struct bnx2x*,struct bnx2x_func_tx_start_params*) ;
 int bnx2x_func_state_change (struct bnx2x*,struct bnx2x_func_state_params*) ;
 int bnx2x_panic () ;

int bnx2x_dcbx_resume_hw_tx(struct bnx2x *bp)
{
 struct bnx2x_func_state_params func_params = {((void*)0)};
 struct bnx2x_func_tx_start_params *tx_params =
  &func_params.params.tx_start;
 int rc;

 func_params.f_obj = &bp->func_obj;
 func_params.cmd = BNX2X_F_CMD_TX_START;

 __set_bit(RAMROD_COMP_WAIT, &func_params.ramrod_flags);
 __set_bit(RAMROD_RETRY, &func_params.ramrod_flags);

 bnx2x_dcbx_fw_struct(bp, tx_params);

 DP(BNX2X_MSG_DCB, "START TRAFFIC\n");

 rc = bnx2x_func_state_change(bp, &func_params);
 if (rc) {
  BNX2X_ERR("Unable to resume traffic after HW configuration\n");
  bnx2x_panic();
 }

 return rc;
}
