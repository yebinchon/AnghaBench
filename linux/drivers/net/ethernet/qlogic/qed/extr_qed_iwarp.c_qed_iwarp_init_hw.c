
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int b_rdma_enabled_in_prs; int rdma_prs_search_reg; } ;


 int PRS_REG_SEARCH_TCP ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

void qed_iwarp_init_hw(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 p_hwfn->rdma_prs_search_reg = PRS_REG_SEARCH_TCP;
 qed_wr(p_hwfn, p_ptt, p_hwfn->rdma_prs_search_reg, 1);
 p_hwfn->b_rdma_enabled_in_prs = 1;
}
