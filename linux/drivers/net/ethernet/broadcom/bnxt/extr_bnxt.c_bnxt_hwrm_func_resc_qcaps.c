
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct hwrm_func_resource_qcaps_output {int vf_reservation_strategy; int max_msix; int max_stat_ctx; int min_stat_ctx; int max_vnics; int min_vnics; int max_l2_ctxs; int min_l2_ctxs; int max_hw_ring_grps; int min_hw_ring_grps; int max_rx_rings; int min_rx_rings; int max_tx_rings; int min_tx_rings; int max_cmpl_rings; int min_cmpl_rings; int max_rsscos_ctx; int min_rsscos_ctx; int max_tx_scheduler_inputs; } ;
struct hwrm_func_resource_qcaps_input {int fid; int member_0; } ;
struct bnxt_pf_info {scalar_t__ vf_resv_strategy; } ;
struct bnxt_hw_resc {void* max_rx_rings; void* max_hw_ring_grps; void* max_nqs; void* max_stat_ctxs; void* min_stat_ctxs; void* max_vnics; void* min_vnics; void* max_l2_ctxs; void* min_l2_ctxs; void* min_hw_ring_grps; void* min_rx_rings; void* max_tx_rings; void* min_tx_rings; void* max_cp_rings; void* min_cp_rings; void* max_rsscos_ctxs; void* min_rsscos_ctxs; void* max_tx_sch_inputs; } ;
struct bnxt {int flags; int hwrm_cmd_lock; struct bnxt_pf_info pf; struct bnxt_hw_resc hw_resc; struct hwrm_func_resource_qcaps_output* hwrm_cmd_resp_addr; } ;
typedef int req ;


 int BNXT_FLAG_CHIP_P5 ;
 scalar_t__ BNXT_PF (struct bnxt*) ;
 scalar_t__ BNXT_VF_RESV_STRATEGY_MAXIMAL ;
 scalar_t__ BNXT_VF_RESV_STRATEGY_MINIMAL_STATIC ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_FUNC_RESOURCE_QCAPS ;
 int _hwrm_send_message_silent (struct bnxt*,struct hwrm_func_resource_qcaps_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_func_resource_qcaps_input*,int ,int,int) ;
 int cpu_to_le16 (int) ;
 void* le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int bnxt_hwrm_func_resc_qcaps(struct bnxt *bp, bool all)
{
 struct hwrm_func_resource_qcaps_output *resp = bp->hwrm_cmd_resp_addr;
 struct hwrm_func_resource_qcaps_input req = {0};
 struct bnxt_hw_resc *hw_resc = &bp->hw_resc;
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_FUNC_RESOURCE_QCAPS, -1, -1);
 req.fid = cpu_to_le16(0xffff);

 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message_silent(bp, &req, sizeof(req),
           HWRM_CMD_TIMEOUT);
 if (rc)
  goto hwrm_func_resc_qcaps_exit;

 hw_resc->max_tx_sch_inputs = le16_to_cpu(resp->max_tx_scheduler_inputs);
 if (!all)
  goto hwrm_func_resc_qcaps_exit;

 hw_resc->min_rsscos_ctxs = le16_to_cpu(resp->min_rsscos_ctx);
 hw_resc->max_rsscos_ctxs = le16_to_cpu(resp->max_rsscos_ctx);
 hw_resc->min_cp_rings = le16_to_cpu(resp->min_cmpl_rings);
 hw_resc->max_cp_rings = le16_to_cpu(resp->max_cmpl_rings);
 hw_resc->min_tx_rings = le16_to_cpu(resp->min_tx_rings);
 hw_resc->max_tx_rings = le16_to_cpu(resp->max_tx_rings);
 hw_resc->min_rx_rings = le16_to_cpu(resp->min_rx_rings);
 hw_resc->max_rx_rings = le16_to_cpu(resp->max_rx_rings);
 hw_resc->min_hw_ring_grps = le16_to_cpu(resp->min_hw_ring_grps);
 hw_resc->max_hw_ring_grps = le16_to_cpu(resp->max_hw_ring_grps);
 hw_resc->min_l2_ctxs = le16_to_cpu(resp->min_l2_ctxs);
 hw_resc->max_l2_ctxs = le16_to_cpu(resp->max_l2_ctxs);
 hw_resc->min_vnics = le16_to_cpu(resp->min_vnics);
 hw_resc->max_vnics = le16_to_cpu(resp->max_vnics);
 hw_resc->min_stat_ctxs = le16_to_cpu(resp->min_stat_ctx);
 hw_resc->max_stat_ctxs = le16_to_cpu(resp->max_stat_ctx);

 if (bp->flags & BNXT_FLAG_CHIP_P5) {
  u16 max_msix = le16_to_cpu(resp->max_msix);

  hw_resc->max_nqs = max_msix;
  hw_resc->max_hw_ring_grps = hw_resc->max_rx_rings;
 }

 if (BNXT_PF(bp)) {
  struct bnxt_pf_info *pf = &bp->pf;

  pf->vf_resv_strategy =
   le16_to_cpu(resp->vf_reservation_strategy);
  if (pf->vf_resv_strategy > BNXT_VF_RESV_STRATEGY_MINIMAL_STATIC)
   pf->vf_resv_strategy = BNXT_VF_RESV_STRATEGY_MAXIMAL;
 }
hwrm_func_resc_qcaps_exit:
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
