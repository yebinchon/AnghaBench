
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int lag_master ;
 int num_lag_ports ;
 int vport_group_manager ;

__attribute__((used)) static inline int mlx5_lag_is_lacp_owner(struct mlx5_core_dev *dev)
{





 return MLX5_CAP_GEN(dev, vport_group_manager) &&
     (MLX5_CAP_GEN(dev, num_lag_ports) > 1) &&
      MLX5_CAP_GEN(dev, lag_master);
}
