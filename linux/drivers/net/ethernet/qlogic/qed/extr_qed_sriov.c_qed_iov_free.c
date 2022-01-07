
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int pf_iov_info; } ;


 scalar_t__ IS_PF_SRIOV_ALLOC (struct qed_hwfn*) ;
 int PROTOCOLID_COMMON ;
 int kfree (int ) ;
 int qed_iov_free_vfdb (struct qed_hwfn*) ;
 int qed_spq_unregister_async_cb (struct qed_hwfn*,int ) ;

void qed_iov_free(struct qed_hwfn *p_hwfn)
{
 qed_spq_unregister_async_cb(p_hwfn, PROTOCOLID_COMMON);

 if (IS_PF_SRIOV_ALLOC(p_hwfn)) {
  qed_iov_free_vfdb(p_hwfn);
  kfree(p_hwfn->pf_iov_info);
 }
}
