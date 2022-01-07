
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int b_rdma_enabled_in_prs; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 scalar_t__ QED_IS_IWARP_PERSONALITY (struct qed_hwfn*) ;
 int QED_MSG_RDMA ;
 int qed_iwarp_init_hw (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_roce_init_hw (struct qed_hwfn*,struct qed_ptt*) ;

__attribute__((used)) static int qed_rdma_init_hw(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 int rc = 0;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "Initializing HW\n");
 p_hwfn->b_rdma_enabled_in_prs = 0;

 if (QED_IS_IWARP_PERSONALITY(p_hwfn))
  qed_iwarp_init_hw(p_hwfn, p_ptt);
 else
  rc = qed_roce_init_hw(p_hwfn, p_ptt);

 return rc;
}
