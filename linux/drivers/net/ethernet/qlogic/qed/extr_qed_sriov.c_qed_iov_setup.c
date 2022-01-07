
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;


 int IS_PF_SRIOV (struct qed_hwfn*) ;
 int IS_PF_SRIOV_ALLOC (struct qed_hwfn*) ;
 int qed_iov_setup_vfdb (struct qed_hwfn*) ;

void qed_iov_setup(struct qed_hwfn *p_hwfn)
{
 if (!IS_PF_SRIOV(p_hwfn) || !IS_PF_SRIOV_ALLOC(p_hwfn))
  return;

 qed_iov_setup_vfdb(p_hwfn);
}
