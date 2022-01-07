
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct devlink_port {int dummy; } ;
struct mlx5e_rep_priv {struct devlink_port dl_port; } ;
struct mlx5e_priv {struct mlx5e_rep_priv* ppriv; } ;


 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct devlink_port *mlx5e_get_devlink_port(struct net_device *dev)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct mlx5e_rep_priv *rpriv = priv->ppriv;

 return &rpriv->dl_port;
}
