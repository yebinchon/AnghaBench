
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * tlsdev_ops; int features; int hw_features; } ;
struct mlx5e_priv {int mdev; struct net_device* netdev; } ;


 int NETIF_F_HW_TLS_TX ;
 int mlx5_accel_is_ktls_device (int ) ;
 int mlx5e_ktls_ops ;

void mlx5e_ktls_build_netdev(struct mlx5e_priv *priv)
{
 struct net_device *netdev = priv->netdev;

 if (!mlx5_accel_is_ktls_device(priv->mdev))
  return;

 netdev->hw_features |= NETIF_F_HW_TLS_TX;
 netdev->features |= NETIF_F_HW_TLS_TX;

 netdev->tlsdev_ops = &mlx5e_ktls_ops;
}
