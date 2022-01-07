
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vf_params ;
typedef size_t u8 ;
struct vfpf_start_rxq_tlv {size_t rx_qid; int cqe_pbl_size; int cqe_pbl_addr; int rxq_addr; int bd_max_bytes; int sb_index; int hw_sb; } ;
struct qed_vf_queue {TYPE_2__* cids; int fw_rx_qid; } ;
struct qed_iov_vf_mbx {TYPE_1__* req_virt; } ;
struct qed_vf_info {int num_active_rxqs; scalar_t__ abs_vf_id; int opaque_fid; int relative_vf_id; int vport_id; struct qed_vf_queue* vf_queues; struct qed_iov_vf_mbx vf_mbx; } ;
struct qed_sb_info {size_t vf_qid; size_t vf_legacy; size_t qid_usage_idx; int vfid; int sb_idx; struct qed_sb_info* p_sb; int igu_sb_id; scalar_t__ stats_id; int vport_id; int queue_id; } ;
struct qed_queue_start_common_params {size_t vf_qid; size_t vf_legacy; size_t qid_usage_idx; int vfid; int sb_idx; struct qed_queue_start_common_params* p_sb; int igu_sb_id; scalar_t__ stats_id; int vport_id; int queue_id; } ;
struct qed_queue_cid_vf_params {size_t vf_qid; size_t vf_legacy; size_t qid_usage_idx; int vfid; int sb_idx; struct qed_queue_cid_vf_params* p_sb; int igu_sb_id; scalar_t__ stats_id; int vport_id; int queue_id; } ;
struct qed_queue_cid {int dummy; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef int sb_dummy ;
typedef int params ;
struct TYPE_4__ {int b_is_tx; struct qed_queue_cid* p_cid; } ;
struct TYPE_3__ {struct vfpf_start_rxq_tlv start_rxq; } ;


 scalar_t__ GTT_BAR0_MAP_REG_MSDM_RAM ;
 scalar_t__ MSTORM_ETH_VF_PRODS_OFFSET (scalar_t__,size_t) ;
 size_t PFVF_STATUS_FAILURE ;
 size_t PFVF_STATUS_NO_RESOURCE ;
 size_t PFVF_STATUS_SUCCESS ;
 size_t QED_IOV_QID_INVALID ;
 int QED_IOV_VALIDATE_Q_DISABLE ;
 size_t QED_QCID_LEGACY_VF_RX_PROD ;
 int REG_WR (struct qed_hwfn*,scalar_t__,int ) ;
 int memset (struct qed_sb_info*,int ,int) ;
 int qed_eth_queue_cid_release (struct qed_hwfn*,struct qed_queue_cid*) ;
 struct qed_queue_cid* qed_eth_queue_to_cid (struct qed_hwfn*,int ,struct qed_sb_info*,int,struct qed_sb_info*) ;
 int qed_eth_rxq_start_ramrod (struct qed_hwfn*,struct qed_queue_cid*,int ,int ,int ,int ) ;
 int qed_iov_validate_rxq (struct qed_hwfn*,struct qed_vf_info*,size_t,int ) ;
 int qed_iov_validate_sb (struct qed_hwfn*,struct qed_vf_info*,int ) ;
 size_t qed_iov_vf_mbx_qid (struct qed_hwfn*,struct qed_vf_info*,int) ;
 int qed_iov_vf_mbx_start_rxq_resp (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,size_t,int) ;
 size_t qed_vf_calculate_legacy (struct qed_vf_info*) ;

__attribute__((used)) static void qed_iov_vf_mbx_start_rxq(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         struct qed_vf_info *vf)
{
 struct qed_queue_start_common_params params;
 struct qed_queue_cid_vf_params vf_params;
 struct qed_iov_vf_mbx *mbx = &vf->vf_mbx;
 u8 status = PFVF_STATUS_NO_RESOURCE;
 u8 qid_usage_idx, vf_legacy = 0;
 struct vfpf_start_rxq_tlv *req;
 struct qed_vf_queue *p_queue;
 struct qed_queue_cid *p_cid;
 struct qed_sb_info sb_dummy;
 int rc;

 req = &mbx->req_virt->start_rxq;

 if (!qed_iov_validate_rxq(p_hwfn, vf, req->rx_qid,
      QED_IOV_VALIDATE_Q_DISABLE) ||
     !qed_iov_validate_sb(p_hwfn, vf, req->hw_sb))
  goto out;

 qid_usage_idx = qed_iov_vf_mbx_qid(p_hwfn, vf, 0);
 if (qid_usage_idx == QED_IOV_QID_INVALID)
  goto out;

 p_queue = &vf->vf_queues[req->rx_qid];
 if (p_queue->cids[qid_usage_idx].p_cid)
  goto out;

 vf_legacy = qed_vf_calculate_legacy(vf);


 memset(&params, 0, sizeof(params));
 params.queue_id = p_queue->fw_rx_qid;
 params.vport_id = vf->vport_id;
 params.stats_id = vf->abs_vf_id + 0x10;

 memset(&sb_dummy, 0, sizeof(sb_dummy));
 sb_dummy.igu_sb_id = req->hw_sb;
 params.p_sb = &sb_dummy;
 params.sb_idx = req->sb_index;

 memset(&vf_params, 0, sizeof(vf_params));
 vf_params.vfid = vf->relative_vf_id;
 vf_params.vf_qid = (u8)req->rx_qid;
 vf_params.vf_legacy = vf_legacy;
 vf_params.qid_usage_idx = qid_usage_idx;
 p_cid = qed_eth_queue_to_cid(p_hwfn, vf->opaque_fid,
         &params, 1, &vf_params);
 if (!p_cid)
  goto out;




 if (!(vf_legacy & QED_QCID_LEGACY_VF_RX_PROD))
  REG_WR(p_hwfn,
         GTT_BAR0_MAP_REG_MSDM_RAM +
         MSTORM_ETH_VF_PRODS_OFFSET(vf->abs_vf_id, req->rx_qid),
         0);

 rc = qed_eth_rxq_start_ramrod(p_hwfn, p_cid,
          req->bd_max_bytes,
          req->rxq_addr,
          req->cqe_pbl_addr, req->cqe_pbl_size);
 if (rc) {
  status = PFVF_STATUS_FAILURE;
  qed_eth_queue_cid_release(p_hwfn, p_cid);
 } else {
  p_queue->cids[qid_usage_idx].p_cid = p_cid;
  p_queue->cids[qid_usage_idx].b_is_tx = 0;
  status = PFVF_STATUS_SUCCESS;
  vf->num_active_rxqs++;
 }

out:
 qed_iov_vf_mbx_start_rxq_resp(p_hwfn, p_ptt, vf, status,
          !!(vf_legacy &
      QED_QCID_LEGACY_VF_RX_PROD));
}
