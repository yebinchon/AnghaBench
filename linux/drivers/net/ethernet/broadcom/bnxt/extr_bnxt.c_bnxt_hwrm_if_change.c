
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrm_func_drv_if_change_output {int flags; } ;
struct hwrm_func_drv_if_change_input {int flags; int member_0; } ;
struct bnxt_hw_resc {scalar_t__ resv_vnics; scalar_t__ resv_hw_ring_grps; scalar_t__ resv_rx_rings; scalar_t__ resv_tx_rings; scalar_t__ resv_irqs; scalar_t__ resv_stat_ctxs; scalar_t__ resv_cp_rings; } ;
struct bnxt {int fw_cap; scalar_t__ rx_nr_rings; scalar_t__ tx_nr_rings; struct bnxt_hw_resc hw_resc; int state; int dev; int hwrm_cmd_lock; struct hwrm_func_drv_if_change_output* hwrm_cmd_resp_addr; } ;
typedef int req ;


 int BNXT_FW_CAP_IF_CHANGE ;
 scalar_t__ BNXT_NEW_RM (struct bnxt*) ;
 int BNXT_STATE_ABORT_ERR ;
 int BNXT_STATE_FW_RESET_DET ;
 int BNXT_STATE_IN_FW_RESET ;
 int ENODEV ;
 int FUNC_DRV_IF_CHANGE_REQ_FLAGS_UP ;
 int FUNC_DRV_IF_CHANGE_RESP_FLAGS_HOT_FW_RESET_DONE ;
 int FUNC_DRV_IF_CHANGE_RESP_FLAGS_RESC_CHANGE ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_FUNC_DRV_IF_CHANGE ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_func_drv_if_change_input*,int,int ) ;
 int bnxt_clear_int_mode (struct bnxt*) ;
 int bnxt_fw_init_one (struct bnxt*) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_func_drv_if_change_input*,int ,int,int) ;
 int bnxt_hwrm_func_resc_qcaps (struct bnxt*,int) ;
 int bnxt_init_int_mode (struct bnxt*) ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_err (int ,char*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bnxt_hwrm_if_change(struct bnxt *bp, bool up)
{
 struct hwrm_func_drv_if_change_output *resp = bp->hwrm_cmd_resp_addr;
 struct hwrm_func_drv_if_change_input req = {0};
 bool resc_reinit = 0, fw_reset = 0;
 u32 flags = 0;
 int rc;

 if (!(bp->fw_cap & BNXT_FW_CAP_IF_CHANGE))
  return 0;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_FUNC_DRV_IF_CHANGE, -1, -1);
 if (up)
  req.flags = cpu_to_le32(FUNC_DRV_IF_CHANGE_REQ_FLAGS_UP);
 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (!rc)
  flags = le32_to_cpu(resp->flags);
 mutex_unlock(&bp->hwrm_cmd_lock);
 if (rc)
  return rc;

 if (!up)
  return 0;

 if (flags & FUNC_DRV_IF_CHANGE_RESP_FLAGS_RESC_CHANGE)
  resc_reinit = 1;
 if (flags & FUNC_DRV_IF_CHANGE_RESP_FLAGS_HOT_FW_RESET_DONE)
  fw_reset = 1;

 if (test_bit(BNXT_STATE_IN_FW_RESET, &bp->state) && !fw_reset) {
  netdev_err(bp->dev, "RESET_DONE not set during FW reset.\n");
  return -ENODEV;
 }
 if (resc_reinit || fw_reset) {
  if (fw_reset) {
   rc = bnxt_fw_init_one(bp);
   if (rc) {
    set_bit(BNXT_STATE_ABORT_ERR, &bp->state);
    return rc;
   }
   bnxt_clear_int_mode(bp);
   rc = bnxt_init_int_mode(bp);
   if (rc) {
    netdev_err(bp->dev, "init int mode failed\n");
    return rc;
   }
   set_bit(BNXT_STATE_FW_RESET_DET, &bp->state);
  }
  if (BNXT_NEW_RM(bp)) {
   struct bnxt_hw_resc *hw_resc = &bp->hw_resc;

   rc = bnxt_hwrm_func_resc_qcaps(bp, 1);
   hw_resc->resv_cp_rings = 0;
   hw_resc->resv_stat_ctxs = 0;
   hw_resc->resv_irqs = 0;
   hw_resc->resv_tx_rings = 0;
   hw_resc->resv_rx_rings = 0;
   hw_resc->resv_hw_ring_grps = 0;
   hw_resc->resv_vnics = 0;
   if (!fw_reset) {
    bp->tx_nr_rings = 0;
    bp->rx_nr_rings = 0;
   }
  }
 }
 return 0;
}
