
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;





 int MLX5_CAP_ETH (struct mlx5_core_dev*,int ) ;
 int tunnel_stateless_gre ;
 int tunnel_stateless_ip_over_ip ;

bool mlx5e_tunnel_proto_supported(struct mlx5_core_dev *mdev, u8 proto_type)
{
 switch (proto_type) {
 case 130:
  return MLX5_CAP_ETH(mdev, tunnel_stateless_gre);
 case 129:
 case 128:
  return MLX5_CAP_ETH(mdev, tunnel_stateless_ip_over_ip);
 default:
  return 0;
 }
}
