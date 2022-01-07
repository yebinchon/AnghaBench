
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_qp {int qpn; } ;


 int pr_info (char*,int,int ) ;

__attribute__((used)) static void dr_qp_event(struct mlx5_core_qp *mqp, int event)
{
 pr_info("DR QP event %u on QP #%u\n", event, mqp->qpn);
}
