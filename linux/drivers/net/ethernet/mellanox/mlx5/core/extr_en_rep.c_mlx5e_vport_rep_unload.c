
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_rep_priv {int dl_port; struct net_device* netdev; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; void* ppriv; } ;
struct mlx5_eswitch_rep {scalar_t__ vport; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_VPORT_UPLINK ;
 int devlink_port_type_clear (int *) ;
 scalar_t__ is_devlink_port_supported (struct mlx5_core_dev*,struct mlx5e_rep_priv*) ;
 int kfree (void*) ;
 int mlx5e_destroy_mdev_resources (struct mlx5_core_dev*) ;
 int mlx5e_destroy_netdev (struct mlx5e_priv*) ;
 int mlx5e_detach_netdev (struct mlx5e_priv*) ;
 int mlx5e_rep_neigh_cleanup (struct mlx5e_rep_priv*) ;
 struct mlx5e_rep_priv* mlx5e_rep_to_rep_priv (struct mlx5_eswitch_rep*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int unregister_devlink_port (struct mlx5_core_dev*,struct mlx5e_rep_priv*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void
mlx5e_vport_rep_unload(struct mlx5_eswitch_rep *rep)
{
 struct mlx5e_rep_priv *rpriv = mlx5e_rep_to_rep_priv(rep);
 struct net_device *netdev = rpriv->netdev;
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5_core_dev *dev = priv->mdev;
 void *ppriv = priv->ppriv;

 if (is_devlink_port_supported(dev, rpriv))
  devlink_port_type_clear(&rpriv->dl_port);
 unregister_netdev(netdev);
 unregister_devlink_port(dev, rpriv);
 mlx5e_rep_neigh_cleanup(rpriv);
 mlx5e_detach_netdev(priv);
 if (rep->vport == MLX5_VPORT_UPLINK)
  mlx5e_destroy_mdev_resources(priv->mdev);
 mlx5e_destroy_netdev(priv);
 kfree(ppriv);
}
