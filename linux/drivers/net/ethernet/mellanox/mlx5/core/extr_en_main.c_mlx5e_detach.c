
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {struct net_device* netdev; } ;
typedef void mlx5_core_dev ;


 scalar_t__ MLX5_ESWITCH_MANAGER (void*) ;
 int mlx5e_destroy_mdev_resources (void*) ;
 int mlx5e_detach_netdev (struct mlx5e_priv*) ;
 int netif_device_present (struct net_device*) ;

__attribute__((used)) static void mlx5e_detach(struct mlx5_core_dev *mdev, void *vpriv)
{
 struct mlx5e_priv *priv = vpriv;
 struct net_device *netdev = priv->netdev;






 if (!netif_device_present(netdev))
  return;

 mlx5e_detach_netdev(priv);
 mlx5e_destroy_mdev_resources(mdev);
}
