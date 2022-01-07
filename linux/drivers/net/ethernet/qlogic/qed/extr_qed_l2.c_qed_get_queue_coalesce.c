
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_queue_cid {scalar_t__ b_is_rx; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int cdev; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EAGAIN ;
 scalar_t__ IS_VF (int ) ;
 int qed_get_rxq_coalesce (struct qed_hwfn*,struct qed_ptt*,struct qed_queue_cid*,int *) ;
 int qed_get_txq_coalesce (struct qed_hwfn*,struct qed_ptt*,struct qed_queue_cid*,int *) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_vf_pf_get_coalesce (struct qed_hwfn*,int *,struct qed_queue_cid*) ;

int qed_get_queue_coalesce(struct qed_hwfn *p_hwfn, u16 *p_coal, void *handle)
{
 struct qed_queue_cid *p_cid = handle;
 struct qed_ptt *p_ptt;
 int rc = 0;

 if (IS_VF(p_hwfn->cdev)) {
  rc = qed_vf_pf_get_coalesce(p_hwfn, p_coal, p_cid);
  if (rc)
   DP_NOTICE(p_hwfn, "Unable to read queue coalescing\n");

  return rc;
 }

 p_ptt = qed_ptt_acquire(p_hwfn);
 if (!p_ptt)
  return -EAGAIN;

 if (p_cid->b_is_rx) {
  rc = qed_get_rxq_coalesce(p_hwfn, p_ptt, p_cid, p_coal);
  if (rc)
   goto out;
 } else {
  rc = qed_get_txq_coalesce(p_hwfn, p_ptt, p_cid, p_coal);
  if (rc)
   goto out;
 }

out:
 qed_ptt_release(p_hwfn, p_ptt);

 return rc;
}
