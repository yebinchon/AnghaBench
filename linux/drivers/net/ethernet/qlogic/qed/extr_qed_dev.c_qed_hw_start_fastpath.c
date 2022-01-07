
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_ptt {int dummy; } ;
struct qed_hwfn {int rdma_prs_search_reg; scalar_t__ b_rdma_enabled_in_prs; TYPE_1__* p_rdma_info; int cdev; } ;
struct TYPE_2__ {scalar_t__ active; } ;


 int EAGAIN ;
 scalar_t__ IS_VF (int ) ;
 int NIG_REG_RX_LLH_BRB_GATE_DNTFWD_PERPF ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

int qed_hw_start_fastpath(struct qed_hwfn *p_hwfn)
{
 struct qed_ptt *p_ptt;

 if (IS_VF(p_hwfn->cdev))
  return 0;

 p_ptt = qed_ptt_acquire(p_hwfn);
 if (!p_ptt)
  return -EAGAIN;

 if (p_hwfn->p_rdma_info &&
     p_hwfn->p_rdma_info->active && p_hwfn->b_rdma_enabled_in_prs)
  qed_wr(p_hwfn, p_ptt, p_hwfn->rdma_prs_search_reg, 0x1);


 qed_wr(p_hwfn, p_ptt, NIG_REG_RX_LLH_BRB_GATE_DNTFWD_PERPF, 0x0);
 qed_ptt_release(p_hwfn, p_ptt);

 return 0;
}
