
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_rdma_query_qp_out_params {int state; } ;
struct qed_rdma_qp {int iwarp_state; } ;


 int qed_iwarp2roce_state (int ) ;

void
qed_iwarp_query_qp(struct qed_rdma_qp *qp,
     struct qed_rdma_query_qp_out_params *out_params)
{
 out_params->state = qed_iwarp2roce_state(qp->iwarp_state);
}
