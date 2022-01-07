
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_CAP_ETH (struct mlx5_core_dev*,int ) ;
 int max_vxlan_udp_ports ;

__attribute__((used)) static inline u8 mlx5_vxlan_max_udp_ports(struct mlx5_core_dev *mdev)
{
 return MLX5_CAP_ETH(mdev, max_vxlan_udp_ports) ?: 4;
}
