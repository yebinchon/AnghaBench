
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_qp {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_destroy_qp (struct mlx5_core_dev*,struct mlx5_core_qp*) ;

void mlx5i_destroy_underlay_qp(struct mlx5_core_dev *mdev, struct mlx5_core_qp *qp)
{
 mlx5_core_destroy_qp(mdev, qp);
}
