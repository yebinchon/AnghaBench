
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_qp {int uid; int qpn; } ;
struct mlx5_core_dev {int dummy; } ;


 int destroy_resource_common (struct mlx5_core_dev*,struct mlx5_core_qp*) ;
 int destroy_sq_tracked (struct mlx5_core_dev*,int ,int ) ;

void mlx5_core_destroy_sq_tracked(struct mlx5_core_dev *dev,
      struct mlx5_core_qp *sq)
{
 destroy_resource_common(dev, sq);
 destroy_sq_tracked(dev, sq->qpn, sq->uid);
}
