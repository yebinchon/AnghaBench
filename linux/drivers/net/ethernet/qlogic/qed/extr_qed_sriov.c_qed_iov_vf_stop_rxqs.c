
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
struct qed_vf_queue {TYPE_1__* cids; } ;
struct qed_vf_info {int num_active_rxqs; int relative_vf_id; struct qed_vf_queue* vf_queues; } ;
struct qed_queue_cid {int qid_usage_idx; } ;
struct qed_hwfn {int dummy; } ;
struct TYPE_2__ {int * p_cid; scalar_t__ b_is_tx; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,size_t,size_t,...) ;
 int EINVAL ;
 int QED_IOV_VALIDATE_Q_NA ;
 int QED_MSG_IOV ;
 int qed_eth_rx_queue_stop (struct qed_hwfn*,int *,int,int) ;
 struct qed_queue_cid* qed_iov_get_vf_rx_queue_cid (struct qed_vf_queue*) ;
 int qed_iov_validate_rxq (struct qed_hwfn*,struct qed_vf_info*,size_t,int ) ;

__attribute__((used)) static int qed_iov_vf_stop_rxqs(struct qed_hwfn *p_hwfn,
    struct qed_vf_info *vf,
    u16 rxq_id,
    u8 qid_usage_idx, bool cqe_completion)
{
 struct qed_vf_queue *p_queue;
 int rc = 0;

 if (!qed_iov_validate_rxq(p_hwfn, vf, rxq_id, QED_IOV_VALIDATE_Q_NA)) {
  DP_VERBOSE(p_hwfn,
      QED_MSG_IOV,
      "VF[%d] Tried Closing Rx 0x%04x.%02x which is inactive\n",
      vf->relative_vf_id, rxq_id, qid_usage_idx);
  return -EINVAL;
 }

 p_queue = &vf->vf_queues[rxq_id];




 if (!p_queue->cids[qid_usage_idx].p_cid ||
     p_queue->cids[qid_usage_idx].b_is_tx) {
  struct qed_queue_cid *p_cid;

  p_cid = qed_iov_get_vf_rx_queue_cid(p_queue);
  DP_VERBOSE(p_hwfn,
      QED_MSG_IOV,
      "VF[%d] - Tried Closing Rx 0x%04x.%02x, but Rx is at %04x.%02x\n",
      vf->relative_vf_id,
      rxq_id, qid_usage_idx, rxq_id, p_cid->qid_usage_idx);
  return -EINVAL;
 }


 rc = qed_eth_rx_queue_stop(p_hwfn,
       p_queue->cids[qid_usage_idx].p_cid,
       0, cqe_completion);
 if (rc)
  return rc;

 p_queue->cids[qid_usage_idx].p_cid = ((void*)0);
 vf->num_active_rxqs--;

 return 0;
}
