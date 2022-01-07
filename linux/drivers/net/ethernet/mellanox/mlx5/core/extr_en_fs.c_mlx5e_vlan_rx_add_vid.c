
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
typedef int __be16 ;


 int EOPNOTSUPP ;
 scalar_t__ ETH_P_8021AD ;
 scalar_t__ ETH_P_8021Q ;
 scalar_t__ be16_to_cpu (int ) ;
 int mlx5e_vlan_rx_add_cvid (struct mlx5e_priv*,int ) ;
 int mlx5e_vlan_rx_add_svid (struct mlx5e_priv*,int ) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

int mlx5e_vlan_rx_add_vid(struct net_device *dev, __be16 proto, u16 vid)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 if (be16_to_cpu(proto) == ETH_P_8021Q)
  return mlx5e_vlan_rx_add_cvid(priv, vid);
 else if (be16_to_cpu(proto) == ETH_P_8021AD)
  return mlx5e_vlan_rx_add_svid(priv, vid);

 return -EOPNOTSUPP;
}
