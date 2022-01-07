
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int inner_ip_version; } ;


 scalar_t__ MLX5_CAP_FLOWTABLE_NIC_RX (struct mlx5_core_dev*,int ) ;
 TYPE_1__ ft_field_support ;
 scalar_t__ mlx5e_any_tunnel_proto_supported (struct mlx5_core_dev*) ;

bool mlx5e_tunnel_inner_ft_supported(struct mlx5_core_dev *mdev)
{
 return (mlx5e_any_tunnel_proto_supported(mdev) &&
  MLX5_CAP_FLOWTABLE_NIC_RX(mdev, ft_field_support.inner_ip_version));
}
