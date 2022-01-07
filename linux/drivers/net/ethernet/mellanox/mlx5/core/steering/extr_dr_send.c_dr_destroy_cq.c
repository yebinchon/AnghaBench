
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_cq {int wq_ctrl; int mcq; } ;
struct mlx5_core_dev {int dummy; } ;


 int kfree (struct mlx5dr_cq*) ;
 int mlx5_core_destroy_cq (struct mlx5_core_dev*,int *) ;
 int mlx5_wq_destroy (int *) ;

__attribute__((used)) static void dr_destroy_cq(struct mlx5_core_dev *mdev, struct mlx5dr_cq *cq)
{
 mlx5_core_destroy_cq(mdev, &cq->mcq);
 mlx5_wq_destroy(&cq->wq_ctrl);
 kfree(cq);
}
