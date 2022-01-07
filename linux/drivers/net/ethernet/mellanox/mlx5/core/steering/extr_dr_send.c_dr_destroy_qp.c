
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mlx5dr_qp* wqe_head; } ;
struct mlx5dr_qp {int wq_ctrl; TYPE_1__ sq; int mqp; } ;
struct mlx5_core_dev {int dummy; } ;


 int kfree (struct mlx5dr_qp*) ;
 int mlx5_core_destroy_qp (struct mlx5_core_dev*,int *) ;
 int mlx5_wq_destroy (int *) ;

__attribute__((used)) static void dr_destroy_qp(struct mlx5_core_dev *mdev,
     struct mlx5dr_qp *dr_qp)
{
 mlx5_core_destroy_qp(mdev, &dr_qp->mqp);
 kfree(dr_qp->sq.wqe_head);
 mlx5_wq_destroy(&dr_qp->wq_ctrl);
 kfree(dr_qp);
}
