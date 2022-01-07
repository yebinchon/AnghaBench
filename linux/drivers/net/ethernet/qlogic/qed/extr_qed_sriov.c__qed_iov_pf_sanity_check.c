
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int cdev; } ;


 int IS_PF_SRIOV_ALLOC (struct qed_hwfn*) ;
 int IS_QED_SRIOV (int ) ;
 scalar_t__ IS_VF (int ) ;
 int qed_iov_is_valid_vfid (struct qed_hwfn*,int,int,int) ;

__attribute__((used)) static bool _qed_iov_pf_sanity_check(struct qed_hwfn *p_hwfn,
         int vfid, bool b_fail_malicious)
{

 if (IS_VF(p_hwfn->cdev) || !IS_QED_SRIOV(p_hwfn->cdev) ||
     !IS_PF_SRIOV_ALLOC(p_hwfn))
  return 0;


 if (!qed_iov_is_valid_vfid(p_hwfn, vfid, 1, b_fail_malicious))
  return 0;

 return 1;
}
