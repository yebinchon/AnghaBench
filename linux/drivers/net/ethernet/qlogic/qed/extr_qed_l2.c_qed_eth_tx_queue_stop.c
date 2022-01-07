
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_queue_cid {int dummy; } ;
struct qed_hwfn {int cdev; } ;


 scalar_t__ IS_PF (int ) ;
 int qed_eth_pf_tx_queue_stop (struct qed_hwfn*,struct qed_queue_cid*) ;
 int qed_eth_queue_cid_release (struct qed_hwfn*,struct qed_queue_cid*) ;
 int qed_vf_pf_txq_stop (struct qed_hwfn*,struct qed_queue_cid*) ;

int qed_eth_tx_queue_stop(struct qed_hwfn *p_hwfn, void *p_handle)
{
 struct qed_queue_cid *p_cid = (struct qed_queue_cid *)p_handle;
 int rc;

 if (IS_PF(p_hwfn->cdev))
  rc = qed_eth_pf_tx_queue_stop(p_hwfn, p_cid);
 else
  rc = qed_vf_pf_txq_stop(p_hwfn, p_cid);

 if (!rc)
  qed_eth_queue_cid_release(p_hwfn, p_cid);
 return rc;
}
