
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;


 int _qed_vf_pf_release (struct qed_hwfn*,int) ;

int qed_vf_pf_release(struct qed_hwfn *p_hwfn)
{
 return _qed_vf_pf_release(p_hwfn, 1);
}
