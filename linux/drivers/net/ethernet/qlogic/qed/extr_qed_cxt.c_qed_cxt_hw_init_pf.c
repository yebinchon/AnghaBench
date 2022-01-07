
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int qed_cdu_init_pf (struct qed_hwfn*) ;
 int qed_cm_init_pf (struct qed_hwfn*) ;
 int qed_dq_init_pf (struct qed_hwfn*) ;
 int qed_ilt_init_pf (struct qed_hwfn*) ;
 int qed_prs_init_pf (struct qed_hwfn*) ;
 int qed_qm_init_pf (struct qed_hwfn*,struct qed_ptt*,int) ;
 int qed_src_init_pf (struct qed_hwfn*) ;
 int qed_tm_init_pf (struct qed_hwfn*) ;

void qed_cxt_hw_init_pf(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 qed_qm_init_pf(p_hwfn, p_ptt, 1);
 qed_cm_init_pf(p_hwfn);
 qed_dq_init_pf(p_hwfn);
 qed_cdu_init_pf(p_hwfn);
 qed_ilt_init_pf(p_hwfn);
 qed_src_init_pf(p_hwfn);
 qed_tm_init_pf(p_hwfn);
 qed_prs_init_pf(p_hwfn);
}
