
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
struct qed_vf_queue {TYPE_1__* cids; } ;
struct qed_vf_info {struct qed_vf_queue* vf_queues; } ;
struct qed_hwfn {int dummy; } ;
struct TYPE_2__ {int * p_cid; int b_is_tx; } ;


 int EINVAL ;
 int QED_IOV_VALIDATE_Q_NA ;
 int qed_eth_tx_queue_stop (struct qed_hwfn*,int *) ;
 int qed_iov_validate_txq (struct qed_hwfn*,struct qed_vf_info*,size_t,int ) ;

__attribute__((used)) static int qed_iov_vf_stop_txqs(struct qed_hwfn *p_hwfn,
    struct qed_vf_info *vf,
    u16 txq_id, u8 qid_usage_idx)
{
 struct qed_vf_queue *p_queue;
 int rc = 0;

 if (!qed_iov_validate_txq(p_hwfn, vf, txq_id, QED_IOV_VALIDATE_Q_NA))
  return -EINVAL;

 p_queue = &vf->vf_queues[txq_id];
 if (!p_queue->cids[qid_usage_idx].p_cid ||
     !p_queue->cids[qid_usage_idx].b_is_tx)
  return -EINVAL;

 rc = qed_eth_tx_queue_stop(p_hwfn, p_queue->cids[qid_usage_idx].p_cid);
 if (rc)
  return rc;

 p_queue->cids[qid_usage_idx].p_cid = ((void*)0);
 return 0;
}
