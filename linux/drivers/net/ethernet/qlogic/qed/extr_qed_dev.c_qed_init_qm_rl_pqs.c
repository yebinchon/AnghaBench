
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qed_qm_info {int num_pqs; } ;
struct qed_hwfn {struct qed_qm_info qm_info; } ;


 int PQ_FLAGS_RLS ;
 int PQ_INIT_PF_RL ;
 int qed_get_offload_tc (struct qed_hwfn*) ;
 int qed_get_pq_flags (struct qed_hwfn*) ;
 scalar_t__ qed_init_qm_get_num_pf_rls (struct qed_hwfn*) ;
 int qed_init_qm_pq (struct qed_hwfn*,struct qed_qm_info*,int ,int ) ;
 int qed_init_qm_set_idx (struct qed_hwfn*,int,int ) ;

__attribute__((used)) static void qed_init_qm_rl_pqs(struct qed_hwfn *p_hwfn)
{
 u16 pf_rls_idx, num_pf_rls = qed_init_qm_get_num_pf_rls(p_hwfn);
 struct qed_qm_info *qm_info = &p_hwfn->qm_info;

 if (!(qed_get_pq_flags(p_hwfn) & PQ_FLAGS_RLS))
  return;

 qed_init_qm_set_idx(p_hwfn, PQ_FLAGS_RLS, qm_info->num_pqs);
 for (pf_rls_idx = 0; pf_rls_idx < num_pf_rls; pf_rls_idx++)
  qed_init_qm_pq(p_hwfn, qm_info, qed_get_offload_tc(p_hwfn),
          PQ_INIT_PF_RL);
}
