
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct ethtool_pauseparam {int dummy; } ;


 int mlx5e_ethtool_get_pauseparam (struct mlx5e_priv*,struct ethtool_pauseparam*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx5e_get_pauseparam(struct net_device *netdev,
     struct ethtool_pauseparam *pauseparam)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);

 mlx5e_ethtool_get_pauseparam(priv, pauseparam);
}
