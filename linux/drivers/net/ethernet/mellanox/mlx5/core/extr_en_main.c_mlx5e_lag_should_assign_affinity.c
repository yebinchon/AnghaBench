
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int lag_tx_port_affinity ;
 int mlx5e_get_num_lag_ports (struct mlx5_core_dev*) ;

__attribute__((used)) static bool mlx5e_lag_should_assign_affinity(struct mlx5_core_dev *mdev)
{
 return MLX5_CAP_GEN(mdev, lag_tx_port_affinity) && mlx5e_get_num_lag_ports(mdev) > 1;
}
