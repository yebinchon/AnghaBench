
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct ethtool_drvinfo {int dummy; } ;


 int mlx5e_ethtool_get_drvinfo (struct mlx5e_priv*,struct ethtool_drvinfo*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx5e_get_drvinfo(struct net_device *dev,
         struct ethtool_drvinfo *drvinfo)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 mlx5e_ethtool_get_drvinfo(priv, drvinfo);
}
