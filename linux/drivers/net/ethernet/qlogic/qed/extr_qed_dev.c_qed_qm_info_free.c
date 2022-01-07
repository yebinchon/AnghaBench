
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_qm_info {int * wfq_data; int * qm_port_params; int * qm_vport_params; int * qm_pq_params; } ;
struct qed_hwfn {struct qed_qm_info qm_info; } ;


 int kfree (int *) ;

__attribute__((used)) static void qed_qm_info_free(struct qed_hwfn *p_hwfn)
{
 struct qed_qm_info *qm_info = &p_hwfn->qm_info;

 kfree(qm_info->qm_pq_params);
 qm_info->qm_pq_params = ((void*)0);
 kfree(qm_info->qm_vport_params);
 qm_info->qm_vport_params = ((void*)0);
 kfree(qm_info->qm_port_params);
 qm_info->qm_port_params = ((void*)0);
 kfree(qm_info->wfq_data);
 qm_info->wfq_data = ((void*)0);
}
