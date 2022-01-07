
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timeo; int hw_features; int features; int * ethtool_ops; int * netdev_ops; int * dcbnl_ops; int dev_addr; } ;
struct mlx5e_rep_priv {struct mlx5_eswitch_rep* rep; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; struct mlx5e_rep_priv* ppriv; } ;
struct mlx5_eswitch_rep {scalar_t__ vport; } ;
struct mlx5_core_dev {int device; } ;


 int HZ ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_VPORT_UPLINK ;
 int NETIF_F_GRO ;
 int NETIF_F_HW_TC ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_NETNS_LOCAL ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int NETIF_F_VLAN_CHALLENGED ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 int eth_hw_addr_random (struct net_device*) ;
 int mlx5_query_mac_address (struct mlx5_core_dev*,int ) ;
 int mlx5e_dcbnl_ops ;
 int mlx5e_netdev_ops_rep ;
 int mlx5e_netdev_ops_uplink_rep ;
 int mlx5e_rep_ethtool_ops ;
 int mlx5e_uplink_rep_ethtool_ops ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int qos ;

__attribute__((used)) static void mlx5e_build_rep_netdev(struct net_device *netdev)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 struct mlx5_eswitch_rep *rep = rpriv->rep;
 struct mlx5_core_dev *mdev = priv->mdev;

 if (rep->vport == MLX5_VPORT_UPLINK) {
  SET_NETDEV_DEV(netdev, mdev->device);
  netdev->netdev_ops = &mlx5e_netdev_ops_uplink_rep;

  mlx5_query_mac_address(mdev, netdev->dev_addr);
  netdev->ethtool_ops = &mlx5e_uplink_rep_ethtool_ops;




 } else {
  netdev->netdev_ops = &mlx5e_netdev_ops_rep;
  eth_hw_addr_random(netdev);
  netdev->ethtool_ops = &mlx5e_rep_ethtool_ops;
 }

 netdev->watchdog_timeo = 15 * HZ;

 netdev->features |= NETIF_F_NETNS_LOCAL;

 netdev->hw_features |= NETIF_F_HW_TC;
 netdev->hw_features |= NETIF_F_SG;
 netdev->hw_features |= NETIF_F_IP_CSUM;
 netdev->hw_features |= NETIF_F_IPV6_CSUM;
 netdev->hw_features |= NETIF_F_GRO;
 netdev->hw_features |= NETIF_F_TSO;
 netdev->hw_features |= NETIF_F_TSO6;
 netdev->hw_features |= NETIF_F_RXCSUM;

 if (rep->vport == MLX5_VPORT_UPLINK)
  netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_RX;
 else
  netdev->features |= NETIF_F_VLAN_CHALLENGED;

 netdev->features |= netdev->hw_features;
}
