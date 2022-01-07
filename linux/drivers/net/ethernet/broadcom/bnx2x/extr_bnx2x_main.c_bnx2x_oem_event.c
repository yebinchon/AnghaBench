
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int* mf_config; int flags; } ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_MSG_MCP ;
 size_t BP_VN (struct bnx2x*) ;
 int DP (int ,char*,...) ;
 int DRV_MSG_CODE_DCC_FAILURE ;
 int DRV_MSG_CODE_DCC_OK ;
 int DRV_MSG_CODE_OEM_FAILURE ;
 int DRV_MSG_CODE_OEM_OK ;
 int DRV_STATUS_DCC_BANDWIDTH_ALLOCATION ;
 int DRV_STATUS_DCC_DISABLE_ENABLE_PF ;
 int DRV_STATUS_DCC_EVENT_MASK ;
 int DRV_STATUS_OEM_BANDWIDTH_ALLOCATION ;
 int DRV_STATUS_OEM_DISABLE_ENABLE_PF ;
 int DRV_STATUS_OEM_EVENT_MASK ;
 int FUNC_MF_CFG_FUNC_DISABLED ;
 int MF_FUNC_DIS ;
 int bnx2x_config_mf_bw (struct bnx2x*) ;
 int bnx2x_e1h_disable (struct bnx2x*) ;
 int bnx2x_e1h_enable (struct bnx2x*) ;
 int bnx2x_fw_command (struct bnx2x*,int,int ) ;

__attribute__((used)) static void bnx2x_oem_event(struct bnx2x *bp, u32 event)
{
 u32 cmd_ok, cmd_fail;


 if (event & DRV_STATUS_DCC_EVENT_MASK &&
     event & DRV_STATUS_OEM_EVENT_MASK) {
  BNX2X_ERR("Received simultaneous events %08x\n", event);
  return;
 }

 if (event & DRV_STATUS_DCC_EVENT_MASK) {
  cmd_fail = DRV_MSG_CODE_DCC_FAILURE;
  cmd_ok = DRV_MSG_CODE_DCC_OK;
 } else {
  cmd_fail = DRV_MSG_CODE_OEM_FAILURE;
  cmd_ok = DRV_MSG_CODE_OEM_OK;
 }

 DP(BNX2X_MSG_MCP, "oem_event 0x%x\n", event);

 if (event & (DRV_STATUS_DCC_DISABLE_ENABLE_PF |
       DRV_STATUS_OEM_DISABLE_ENABLE_PF)) {




  if (bp->mf_config[BP_VN(bp)] & FUNC_MF_CFG_FUNC_DISABLED) {
   DP(BNX2X_MSG_MCP, "mf_cfg function disabled\n");
   bp->flags |= MF_FUNC_DIS;

   bnx2x_e1h_disable(bp);
  } else {
   DP(BNX2X_MSG_MCP, "mf_cfg function enabled\n");
   bp->flags &= ~MF_FUNC_DIS;

   bnx2x_e1h_enable(bp);
  }
  event &= ~(DRV_STATUS_DCC_DISABLE_ENABLE_PF |
      DRV_STATUS_OEM_DISABLE_ENABLE_PF);
 }

 if (event & (DRV_STATUS_DCC_BANDWIDTH_ALLOCATION |
       DRV_STATUS_OEM_BANDWIDTH_ALLOCATION)) {
  bnx2x_config_mf_bw(bp);
  event &= ~(DRV_STATUS_DCC_BANDWIDTH_ALLOCATION |
      DRV_STATUS_OEM_BANDWIDTH_ALLOCATION);
 }


 if (event)
  bnx2x_fw_command(bp, cmd_fail, 0);
 else
  bnx2x_fw_command(bp, cmd_ok, 0);
}
