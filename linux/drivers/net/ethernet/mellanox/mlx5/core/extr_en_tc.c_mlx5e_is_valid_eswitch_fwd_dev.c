
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;


 scalar_t__ is_merged_eswitch_dev (struct mlx5e_priv*,struct net_device*) ;
 scalar_t__ mlx5e_eswitch_rep (struct net_device*) ;
 int netdev_priv (struct net_device*) ;
 scalar_t__ same_hw_devs (struct mlx5e_priv*,int ) ;

bool mlx5e_is_valid_eswitch_fwd_dev(struct mlx5e_priv *priv,
        struct net_device *out_dev)
{
 if (is_merged_eswitch_dev(priv, out_dev))
  return 1;

 return mlx5e_eswitch_rep(out_dev) &&
        same_hw_devs(priv, netdev_priv(out_dev));
}
