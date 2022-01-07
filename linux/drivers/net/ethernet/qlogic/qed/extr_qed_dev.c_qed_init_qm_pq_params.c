
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;


 int qed_init_qm_advance_vport (struct qed_hwfn*) ;
 int qed_init_qm_lb_pq (struct qed_hwfn*) ;
 int qed_init_qm_low_latency_pq (struct qed_hwfn*) ;
 int qed_init_qm_mcos_pqs (struct qed_hwfn*) ;
 int qed_init_qm_offload_pq (struct qed_hwfn*) ;
 int qed_init_qm_ooo_pq (struct qed_hwfn*) ;
 int qed_init_qm_pure_ack_pq (struct qed_hwfn*) ;
 int qed_init_qm_rl_pqs (struct qed_hwfn*) ;
 int qed_init_qm_vf_pqs (struct qed_hwfn*) ;

__attribute__((used)) static void qed_init_qm_pq_params(struct qed_hwfn *p_hwfn)
{

 qed_init_qm_rl_pqs(p_hwfn);


 qed_init_qm_mcos_pqs(p_hwfn);


 qed_init_qm_lb_pq(p_hwfn);


 qed_init_qm_ooo_pq(p_hwfn);


 qed_init_qm_pure_ack_pq(p_hwfn);


 qed_init_qm_offload_pq(p_hwfn);


 qed_init_qm_low_latency_pq(p_hwfn);


 qed_init_qm_advance_vport(p_hwfn);


 qed_init_qm_vf_pqs(p_hwfn);
}
