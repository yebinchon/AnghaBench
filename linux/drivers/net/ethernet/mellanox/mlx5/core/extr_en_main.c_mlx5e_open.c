
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx5e_priv {TYPE_1__* mdev; int state_lock; } ;
struct TYPE_2__ {int vxlan; } ;


 int MLX5_PORT_UP ;
 int mlx5_set_port_admin_status (TYPE_1__*,int ) ;
 scalar_t__ mlx5_vxlan_allowed (int ) ;
 int mlx5e_open_locked (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int udp_tunnel_get_rx_info (struct net_device*) ;

int mlx5e_open(struct net_device *netdev)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 int err;

 mutex_lock(&priv->state_lock);
 err = mlx5e_open_locked(netdev);
 if (!err)
  mlx5_set_port_admin_status(priv->mdev, MLX5_PORT_UP);
 mutex_unlock(&priv->state_lock);

 if (mlx5_vxlan_allowed(priv->mdev->vxlan))
  udp_tunnel_get_rx_info(netdev);

 return err;
}
