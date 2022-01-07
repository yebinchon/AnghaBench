
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_queue_cid {int vf_legacy; scalar_t__ vfid; int cid; } ;
struct qed_hwfn {int cdev; } ;


 scalar_t__ IS_PF (int ) ;
 int QED_QCID_LEGACY_VF_CID ;
 scalar_t__ QED_QUEUE_CID_SELF ;
 int _qed_cxt_release_cid (struct qed_hwfn*,int ,scalar_t__) ;
 int qed_eth_queue_qid_usage_del (struct qed_hwfn*,struct qed_queue_cid*) ;
 int vfree (struct qed_queue_cid*) ;

void qed_eth_queue_cid_release(struct qed_hwfn *p_hwfn,
          struct qed_queue_cid *p_cid)
{
 bool b_legacy_vf = !!(p_cid->vf_legacy & QED_QCID_LEGACY_VF_CID);

 if (IS_PF(p_hwfn->cdev) && !b_legacy_vf)
  _qed_cxt_release_cid(p_hwfn, p_cid->cid, p_cid->vfid);


 if (p_cid->vfid == QED_QUEUE_CID_SELF)
  qed_eth_queue_qid_usage_del(p_hwfn, p_cid);

 vfree(p_cid);
}
