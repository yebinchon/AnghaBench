
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlx5e_params {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5E_HW2SW_MTU (struct mlx5e_params*,scalar_t__) ;
 int mlx5_query_nic_vport_mtu (struct mlx5_core_dev*,scalar_t__*) ;
 int mlx5_query_port_oper_mtu (struct mlx5_core_dev*,scalar_t__*,int) ;

__attribute__((used)) static void mlx5e_query_mtu(struct mlx5_core_dev *mdev,
       struct mlx5e_params *params, u16 *mtu)
{
 u16 hw_mtu = 0;
 int err;

 err = mlx5_query_nic_vport_mtu(mdev, &hw_mtu);
 if (err || !hw_mtu)
  mlx5_query_port_oper_mtu(mdev, &hw_mtu, 1);

 *mtu = MLX5E_HW2SW_MTU(params, hw_mtu);
}
