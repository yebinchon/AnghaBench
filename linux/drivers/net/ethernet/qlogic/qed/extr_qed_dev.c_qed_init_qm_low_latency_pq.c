
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_qm_info {int num_pqs; } ;
struct qed_hwfn {struct qed_qm_info qm_info; } ;


 int PQ_FLAGS_LLT ;
 int qed_get_pq_flags (struct qed_hwfn*) ;
 int qed_init_qm_mtc_pqs (struct qed_hwfn*) ;
 int qed_init_qm_set_idx (struct qed_hwfn*,int,int ) ;

__attribute__((used)) static void qed_init_qm_low_latency_pq(struct qed_hwfn *p_hwfn)
{
 struct qed_qm_info *qm_info = &p_hwfn->qm_info;

 if (!(qed_get_pq_flags(p_hwfn) & PQ_FLAGS_LLT))
  return;

 qed_init_qm_set_idx(p_hwfn, PQ_FLAGS_LLT, qm_info->num_pqs);
 qed_init_qm_mtc_pqs(p_hwfn);
}
