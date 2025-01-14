
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct ethtool_channels {int dummy; } ;


 int mlx5e_ethtool_get_channels (struct mlx5e_priv*,struct ethtool_channels*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx5e_rep_get_channels(struct net_device *dev,
       struct ethtool_channels *ch)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 mlx5e_ethtool_get_channels(priv, ch);
}
