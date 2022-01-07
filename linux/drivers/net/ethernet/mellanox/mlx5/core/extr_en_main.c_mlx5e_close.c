
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int state_lock; int mdev; } ;


 int ENODEV ;
 int MLX5_PORT_DOWN ;
 int mlx5_set_port_admin_status (int ,int ) ;
 int mlx5e_close_locked (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int netif_device_present (struct net_device*) ;

int mlx5e_close(struct net_device *netdev)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 int err;

 if (!netif_device_present(netdev))
  return -ENODEV;

 mutex_lock(&priv->state_lock);
 mlx5_set_port_admin_status(priv->mdev, MLX5_PORT_DOWN);
 err = mlx5e_close_locked(netdev);
 mutex_unlock(&priv->state_lock);

 return err;
}
