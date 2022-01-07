
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrm_cfa_adv_flow_mgnt_qcaps_output {int flags; } ;
struct hwrm_cfa_adv_flow_mgnt_qcaps_input {int member_0; } ;
struct bnxt {int fw_cap; int hwrm_cmd_lock; struct hwrm_cfa_adv_flow_mgnt_qcaps_output* hwrm_cmd_resp_addr; } ;
typedef int req ;


 int BNXT_FW_CAP_CFA_ADV_FLOW ;
 int BNXT_FW_CAP_CFA_RFS_RING_TBL_IDX ;
 int CFA_ADV_FLOW_MGNT_QCAPS_RESP_FLAGS_RFS_RING_TBL_IDX_SUPPORTED ;
 int HWRM_CFA_ADV_FLOW_MGNT_QCAPS ;
 int HWRM_CMD_TIMEOUT ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_cfa_adv_flow_mgnt_qcaps_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_cfa_adv_flow_mgnt_qcaps_input*,int ,int,int) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bnxt_hwrm_cfa_adv_flow_mgnt_qcaps(struct bnxt *bp)
{
 struct hwrm_cfa_adv_flow_mgnt_qcaps_input req = {0};
 struct hwrm_cfa_adv_flow_mgnt_qcaps_output *resp;
 int rc = 0;
 u32 flags;

 if (!(bp->fw_cap & BNXT_FW_CAP_CFA_ADV_FLOW))
  return 0;

 resp = bp->hwrm_cmd_resp_addr;
 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_CFA_ADV_FLOW_MGNT_QCAPS, -1, -1);

 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (rc)
  goto hwrm_cfa_adv_qcaps_exit;

 flags = le32_to_cpu(resp->flags);
 if (flags &
     CFA_ADV_FLOW_MGNT_QCAPS_RESP_FLAGS_RFS_RING_TBL_IDX_SUPPORTED)
  bp->fw_cap |= BNXT_FW_CAP_CFA_RFS_RING_TBL_IDX;

hwrm_cfa_adv_qcaps_exit:
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
