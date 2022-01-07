
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_rdma_qp {int icid; } ;
struct qed_hwfn {int dummy; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,...) ;
 scalar_t__ QED_IS_IWARP_PERSONALITY (struct qed_hwfn*) ;
 int QED_MSG_RDMA ;
 int kfree (struct qed_rdma_qp*) ;
 int qed_iwarp_destroy_qp (struct qed_hwfn*,struct qed_rdma_qp*) ;
 int qed_roce_destroy_qp (struct qed_hwfn*,struct qed_rdma_qp*) ;

__attribute__((used)) static int qed_rdma_destroy_qp(void *rdma_cxt, struct qed_rdma_qp *qp)
{
 struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;
 int rc = 0;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "icid = %08x\n", qp->icid);

 if (QED_IS_IWARP_PERSONALITY(p_hwfn))
  rc = qed_iwarp_destroy_qp(p_hwfn, qp);
 else
  rc = qed_roce_destroy_qp(p_hwfn, qp);


 kfree(qp);

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "QP destroyed\n");
 return rc;
}
