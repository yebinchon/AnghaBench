
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct ethtool_ringparam {int dummy; } ;


 int mlx5e_ethtool_set_ringparam (struct mlx5e_priv*,struct ethtool_ringparam*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_set_ringparam(struct net_device *dev,
          struct ethtool_ringparam *param)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 return mlx5e_ethtool_set_ringparam(priv, param);
}
