
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_profile {int (* cleanup ) (struct mlx5e_priv*) ;} ;
struct mlx5e_priv {struct net_device* netdev; struct mlx5e_profile* profile; } ;


 int free_netdev (struct net_device*) ;
 int stub1 (struct mlx5e_priv*) ;

void mlx5e_destroy_netdev(struct mlx5e_priv *priv)
{
 const struct mlx5e_profile *profile = priv->profile;
 struct net_device *netdev = priv->netdev;

 if (profile->cleanup)
  profile->cleanup(priv);
 free_netdev(netdev);
}
