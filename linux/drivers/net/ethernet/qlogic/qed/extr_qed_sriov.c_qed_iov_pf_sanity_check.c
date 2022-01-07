
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;


 int _qed_iov_pf_sanity_check (struct qed_hwfn*,int,int) ;

__attribute__((used)) static bool qed_iov_pf_sanity_check(struct qed_hwfn *p_hwfn, int vfid)
{
 return _qed_iov_pf_sanity_check(p_hwfn, vfid, 1);
}
