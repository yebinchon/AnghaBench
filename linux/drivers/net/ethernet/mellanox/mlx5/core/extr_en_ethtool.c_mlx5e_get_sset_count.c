
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;


 int mlx5e_ethtool_get_sset_count (struct mlx5e_priv*,int) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_get_sset_count(struct net_device *dev, int sset)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 return mlx5e_ethtool_get_sset_count(priv, sset);
}
