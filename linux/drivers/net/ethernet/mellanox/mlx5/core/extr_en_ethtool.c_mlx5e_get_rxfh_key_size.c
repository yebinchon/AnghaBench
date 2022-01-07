
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;


 int mlx5e_ethtool_get_rxfh_key_size (struct mlx5e_priv*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 mlx5e_get_rxfh_key_size(struct net_device *netdev)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);

 return mlx5e_ethtool_get_rxfh_key_size(priv);
}
