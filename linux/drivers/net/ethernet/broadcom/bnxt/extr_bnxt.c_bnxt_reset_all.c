
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_fw_reset_input {int flags; int selfrst_status; int embedded_proc_type; int resp_addr; int member_0; } ;
struct bnxt_fw_health {int flags; int fw_reset_seq_cnt; } ;
struct bnxt {int fw_reset_timestamp; int dev; int hwrm_cmd_kong_resp_dma_addr; struct bnxt_fw_health* fw_health; } ;
typedef int req ;


 int ERROR_RECOVERY_QCFG_RESP_FLAGS_CO_CPU ;
 int ERROR_RECOVERY_QCFG_RESP_FLAGS_HOST ;
 int FW_RESET_REQ_EMBEDDED_PROC_TYPE_CHIP ;
 int FW_RESET_REQ_FLAGS_RESET_GRACEFUL ;
 int FW_RESET_REQ_SELFRST_STATUS_SELFRSTASAP ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_FW_RESET ;
 int bnxt_fw_reset_writel (struct bnxt*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_fw_reset_input*,int ,int,int) ;
 int cpu_to_le64 (int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_fw_reset_input*,int,int ) ;
 int jiffies ;
 int netdev_warn (int ,char*,int) ;

__attribute__((used)) static void bnxt_reset_all(struct bnxt *bp)
{
 struct bnxt_fw_health *fw_health = bp->fw_health;
 int i;

 if (fw_health->flags & ERROR_RECOVERY_QCFG_RESP_FLAGS_HOST) {
  for (i = 0; i < fw_health->fw_reset_seq_cnt; i++)
   bnxt_fw_reset_writel(bp, i);
 } else if (fw_health->flags & ERROR_RECOVERY_QCFG_RESP_FLAGS_CO_CPU) {
  struct hwrm_fw_reset_input req = {0};
  int rc;

  bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_FW_RESET, -1, -1);
  req.resp_addr = cpu_to_le64(bp->hwrm_cmd_kong_resp_dma_addr);
  req.embedded_proc_type = FW_RESET_REQ_EMBEDDED_PROC_TYPE_CHIP;
  req.selfrst_status = FW_RESET_REQ_SELFRST_STATUS_SELFRSTASAP;
  req.flags = FW_RESET_REQ_FLAGS_RESET_GRACEFUL;
  rc = hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
  if (rc)
   netdev_warn(bp->dev, "Unable to reset FW rc=%d\n", rc);
 }
 bp->fw_reset_timestamp = jiffies;
}
