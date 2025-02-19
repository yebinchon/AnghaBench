
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_rdma_qp {scalar_t__ cur_state; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EINVAL ;
 scalar_t__ QED_ROCE_QP_STATE_ERR ;
 scalar_t__ QED_ROCE_QP_STATE_INIT ;
 scalar_t__ QED_ROCE_QP_STATE_RESET ;
 int qed_roce_sp_destroy_qp_requester (struct qed_hwfn*,struct qed_rdma_qp*) ;
 int qed_roce_sp_destroy_qp_responder (struct qed_hwfn*,struct qed_rdma_qp*,int *) ;

int qed_roce_destroy_qp(struct qed_hwfn *p_hwfn, struct qed_rdma_qp *qp)
{
 u32 cq_prod;
 int rc;


 if ((qp->cur_state != QED_ROCE_QP_STATE_RESET) &&
     (qp->cur_state != QED_ROCE_QP_STATE_ERR) &&
     (qp->cur_state != QED_ROCE_QP_STATE_INIT)) {
  DP_NOTICE(p_hwfn,
     "QP must be in error, reset or init state before destroying it\n");
  return -EINVAL;
 }

 if (qp->cur_state != QED_ROCE_QP_STATE_RESET) {
  rc = qed_roce_sp_destroy_qp_responder(p_hwfn, qp,
            &cq_prod);
  if (rc)
   return rc;


  rc = qed_roce_sp_destroy_qp_requester(p_hwfn, qp);
  if (rc)
   return rc;
 }

 return 0;
}
