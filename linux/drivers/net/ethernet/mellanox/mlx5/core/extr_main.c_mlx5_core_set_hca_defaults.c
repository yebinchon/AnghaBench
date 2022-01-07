
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_PORT_TYPE_ETH ;
 int mlx5_nic_vport_update_local_lb (struct mlx5_core_dev*,int) ;
 int port_type ;

__attribute__((used)) static int mlx5_core_set_hca_defaults(struct mlx5_core_dev *dev)
{
 int ret = 0;


 if (MLX5_CAP_GEN(dev, port_type) == MLX5_CAP_PORT_TYPE_ETH)
  ret = mlx5_nic_vport_update_local_lb(dev, 0);

 return ret;
}
