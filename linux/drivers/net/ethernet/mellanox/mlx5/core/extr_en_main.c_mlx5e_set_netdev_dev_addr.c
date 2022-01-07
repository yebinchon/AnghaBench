
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct mlx5e_priv {int mdev; } ;


 int MLX5_CAP_GEN (int ,int ) ;
 int eth_hw_addr_random (struct net_device*) ;
 scalar_t__ is_zero_ether_addr (int ) ;
 int mlx5_core_info (int ,char*,int ) ;
 int mlx5_query_mac_address (int ,int ) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int vport_group_manager ;

__attribute__((used)) static void mlx5e_set_netdev_dev_addr(struct net_device *netdev)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);

 mlx5_query_mac_address(priv->mdev, netdev->dev_addr);
 if (is_zero_ether_addr(netdev->dev_addr) &&
     !MLX5_CAP_GEN(priv->mdev, vport_group_manager)) {
  eth_hw_addr_random(netdev);
  mlx5_core_info(priv->mdev, "Assigned random MAC address %pM\n", netdev->dev_addr);
 }
}
