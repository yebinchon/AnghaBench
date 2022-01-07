
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_qm_info {int num_pqs; } ;
struct qed_hwfn {struct qed_qm_info qm_info; } ;


 int PQ_FLAGS_LB ;
 int PQ_INIT_SHARE_VPORT ;
 int PURE_LB_TC ;
 int qed_get_pq_flags (struct qed_hwfn*) ;
 int qed_init_qm_pq (struct qed_hwfn*,struct qed_qm_info*,int ,int ) ;
 int qed_init_qm_set_idx (struct qed_hwfn*,int,int ) ;

__attribute__((used)) static void qed_init_qm_lb_pq(struct qed_hwfn *p_hwfn)
{
 struct qed_qm_info *qm_info = &p_hwfn->qm_info;

 if (!(qed_get_pq_flags(p_hwfn) & PQ_FLAGS_LB))
  return;

 qed_init_qm_set_idx(p_hwfn, PQ_FLAGS_LB, qm_info->num_pqs);
 qed_init_qm_pq(p_hwfn, qm_info, PURE_LB_TC, PQ_INIT_SHARE_VPORT);
}
