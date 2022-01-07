
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ mlx5_core_is_pf (struct mlx5_core_dev*) ;
 int mlx5e_get_num_lag_ports (struct mlx5_core_dev*) ;
 int vhca_id ;

__attribute__((used)) static u8 mlx5e_enumerate_lag_port(struct mlx5_core_dev *mdev, int ix)
{
 u16 port_aff_bias = mlx5_core_is_pf(mdev) ? 0 : MLX5_CAP_GEN(mdev, vhca_id);

 return (ix + port_aff_bias) % mlx5e_get_num_lag_ports(mdev);
}
