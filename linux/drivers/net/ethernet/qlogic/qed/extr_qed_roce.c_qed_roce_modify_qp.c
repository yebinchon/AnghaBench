
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_rdma_qp {scalar_t__ cur_state; int cq_prod; } ;
struct qed_rdma_modify_qp_in_params {int modify_flags; } ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_roce_qp_state { ____Placeholder_qed_roce_qp_state } qed_roce_qp_state ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 int QED_MSG_RDMA ;
 scalar_t__ QED_ROCE_QP_STATE_ERR ;
 int QED_ROCE_QP_STATE_INIT ;
 int QED_ROCE_QP_STATE_RESET ;
 scalar_t__ QED_ROCE_QP_STATE_RTR ;
 scalar_t__ QED_ROCE_QP_STATE_RTS ;
 scalar_t__ QED_ROCE_QP_STATE_SQD ;
 int qed_roce_sp_create_requester (struct qed_hwfn*,struct qed_rdma_qp*) ;
 int qed_roce_sp_create_responder (struct qed_hwfn*,struct qed_rdma_qp*) ;
 int qed_roce_sp_destroy_qp_requester (struct qed_hwfn*,struct qed_rdma_qp*) ;
 int qed_roce_sp_destroy_qp_responder (struct qed_hwfn*,struct qed_rdma_qp*,int *) ;
 int qed_roce_sp_modify_requester (struct qed_hwfn*,struct qed_rdma_qp*,int,int,int ) ;
 int qed_roce_sp_modify_responder (struct qed_hwfn*,struct qed_rdma_qp*,int,int ) ;

int qed_roce_modify_qp(struct qed_hwfn *p_hwfn,
         struct qed_rdma_qp *qp,
         enum qed_roce_qp_state prev_state,
         struct qed_rdma_modify_qp_in_params *params)
{
 int rc = 0;




 if (((prev_state == QED_ROCE_QP_STATE_INIT) ||
      (prev_state == QED_ROCE_QP_STATE_RESET)) &&
     (qp->cur_state == QED_ROCE_QP_STATE_RTR)) {

  rc = qed_roce_sp_create_responder(p_hwfn, qp);
  return rc;
 } else if ((prev_state == QED_ROCE_QP_STATE_RTR) &&
     (qp->cur_state == QED_ROCE_QP_STATE_RTS)) {

  rc = qed_roce_sp_create_requester(p_hwfn, qp);
  if (rc)
   return rc;


  rc = qed_roce_sp_modify_responder(p_hwfn, qp, 0,
        params->modify_flags);
  return rc;
 } else if ((prev_state == QED_ROCE_QP_STATE_RTS) &&
     (qp->cur_state == QED_ROCE_QP_STATE_RTS)) {

  rc = qed_roce_sp_modify_responder(p_hwfn, qp, 0,
        params->modify_flags);
  if (rc)
   return rc;

  rc = qed_roce_sp_modify_requester(p_hwfn, qp, 0, 0,
        params->modify_flags);
  return rc;
 } else if ((prev_state == QED_ROCE_QP_STATE_RTS) &&
     (qp->cur_state == QED_ROCE_QP_STATE_SQD)) {

  rc = qed_roce_sp_modify_requester(p_hwfn, qp, 1, 0,
        params->modify_flags);
  return rc;
 } else if ((prev_state == QED_ROCE_QP_STATE_SQD) &&
     (qp->cur_state == QED_ROCE_QP_STATE_SQD)) {

  rc = qed_roce_sp_modify_responder(p_hwfn, qp, 0,
        params->modify_flags);
  if (rc)
   return rc;

  rc = qed_roce_sp_modify_requester(p_hwfn, qp, 0, 0,
        params->modify_flags);
  return rc;
 } else if ((prev_state == QED_ROCE_QP_STATE_SQD) &&
     (qp->cur_state == QED_ROCE_QP_STATE_RTS)) {

  rc = qed_roce_sp_modify_responder(p_hwfn, qp, 0,
        params->modify_flags);
  if (rc)
   return rc;

  rc = qed_roce_sp_modify_requester(p_hwfn, qp, 0, 0,
        params->modify_flags);

  return rc;
 } else if (qp->cur_state == QED_ROCE_QP_STATE_ERR) {

  rc = qed_roce_sp_modify_responder(p_hwfn, qp, 1,
        params->modify_flags);
  if (rc)
   return rc;

  rc = qed_roce_sp_modify_requester(p_hwfn, qp, 0, 1,
        params->modify_flags);
  return rc;
 } else if (qp->cur_state == QED_ROCE_QP_STATE_RESET) {

  u32 cq_prod;


  rc = qed_roce_sp_destroy_qp_responder(p_hwfn,
            qp,
            &cq_prod);

  if (rc)
   return rc;

  qp->cq_prod = cq_prod;

  rc = qed_roce_sp_destroy_qp_requester(p_hwfn, qp);
 } else {
  DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "0\n");
 }

 return rc;
}
