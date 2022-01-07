
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;


 int qed_cdu_init_common (struct qed_hwfn*) ;
 int qed_prs_init_common (struct qed_hwfn*) ;

void qed_cxt_hw_init_common(struct qed_hwfn *p_hwfn)
{
 qed_cdu_init_common(p_hwfn);
 qed_prs_init_common(p_hwfn);
}
