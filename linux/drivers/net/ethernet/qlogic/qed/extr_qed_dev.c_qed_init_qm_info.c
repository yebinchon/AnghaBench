
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;


 int qed_dp_init_qm_params (struct qed_hwfn*) ;
 int qed_init_qm_params (struct qed_hwfn*) ;
 int qed_init_qm_port_params (struct qed_hwfn*) ;
 int qed_init_qm_pq_params (struct qed_hwfn*) ;
 int qed_init_qm_reset_params (struct qed_hwfn*) ;
 int qed_init_qm_vport_params (struct qed_hwfn*) ;

__attribute__((used)) static void qed_init_qm_info(struct qed_hwfn *p_hwfn)
{

 qed_init_qm_reset_params(p_hwfn);


 qed_init_qm_params(p_hwfn);


 qed_init_qm_port_params(p_hwfn);


 qed_init_qm_vport_params(p_hwfn);


 qed_init_qm_pq_params(p_hwfn);


 qed_dp_init_qm_params(p_hwfn);
}
