
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int db_bar_no_edpm; } ;


 int qed_rdma_dpm_conf (struct qed_hwfn*,struct qed_ptt*) ;

void qed_rdma_dpm_bar(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 p_hwfn->db_bar_no_edpm = 1;

 qed_rdma_dpm_conf(p_hwfn, p_ptt);
}
