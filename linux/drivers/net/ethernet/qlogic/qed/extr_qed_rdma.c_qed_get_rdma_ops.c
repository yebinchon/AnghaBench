
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_rdma_ops {int dummy; } ;


 struct qed_rdma_ops const qed_rdma_ops_pass ;

const struct qed_rdma_ops *qed_get_rdma_ops(void)
{
 return &qed_rdma_ops_pass;
}
