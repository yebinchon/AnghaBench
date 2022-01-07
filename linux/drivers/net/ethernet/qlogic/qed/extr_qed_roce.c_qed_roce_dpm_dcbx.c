
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dcbx_no_edpm; } ;


 scalar_t__ qed_rdma_allocated_qps (struct qed_hwfn*) ;
 int qed_rdma_dpm_conf (struct qed_hwfn*,struct qed_ptt*) ;

void qed_roce_dpm_dcbx(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u8 val;





 val = qed_rdma_allocated_qps(p_hwfn) ? 1 : 0;
 p_hwfn->dcbx_no_edpm = (u8)val;

 qed_rdma_dpm_conf(p_hwfn, p_ptt);
}
