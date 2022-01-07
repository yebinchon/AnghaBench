
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5e_params {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5E_SW2HW_MTU (struct mlx5e_params*,int ) ;
 int mlx5_modify_nic_vport_mtu (struct mlx5_core_dev*,int ) ;
 int mlx5_set_port_mtu (struct mlx5_core_dev*,int ,int) ;

__attribute__((used)) static int mlx5e_set_mtu(struct mlx5_core_dev *mdev,
    struct mlx5e_params *params, u16 mtu)
{
 u16 hw_mtu = MLX5E_SW2HW_MTU(params, mtu);
 int err;

 err = mlx5_set_port_mtu(mdev, hw_mtu, 1);
 if (err)
  return err;


 mlx5_modify_nic_vport_mtu(mdev, hw_mtu);
 return 0;
}
