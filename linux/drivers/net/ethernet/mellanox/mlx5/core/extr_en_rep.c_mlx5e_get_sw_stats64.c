
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;


 int mlx5e_fold_sw_stats64 (struct mlx5e_priv*,struct rtnl_link_stats64*) ;
 struct mlx5e_priv* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int
mlx5e_get_sw_stats64(const struct net_device *dev,
       struct rtnl_link_stats64 *stats)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 mlx5e_fold_sw_stats64(priv, stats);
 return 0;
}
