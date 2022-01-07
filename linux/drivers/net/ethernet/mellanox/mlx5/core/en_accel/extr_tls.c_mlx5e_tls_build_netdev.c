
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int * tlsdev_ops; int hw_features; int features; } ;
struct mlx5e_priv {int mdev; struct net_device* netdev; } ;


 int MLX5_ACCEL_TLS_LRO ;
 int MLX5_ACCEL_TLS_RX ;
 int MLX5_ACCEL_TLS_TX ;
 int NETIF_F_HW_TLS_RX ;
 int NETIF_F_HW_TLS_TX ;
 int NETIF_F_LRO ;
 scalar_t__ mlx5_accel_is_ktls_device (int ) ;
 int mlx5_accel_is_tls_device (int ) ;
 int mlx5_accel_tls_device_caps (int ) ;
 int mlx5e_ktls_build_netdev (struct mlx5e_priv*) ;
 int mlx5e_tls_ops ;

void mlx5e_tls_build_netdev(struct mlx5e_priv *priv)
{
 struct net_device *netdev = priv->netdev;
 u32 caps;

 if (mlx5_accel_is_ktls_device(priv->mdev)) {
  mlx5e_ktls_build_netdev(priv);
  return;
 }

 if (!mlx5_accel_is_tls_device(priv->mdev))
  return;

 caps = mlx5_accel_tls_device_caps(priv->mdev);
 if (caps & MLX5_ACCEL_TLS_TX) {
  netdev->features |= NETIF_F_HW_TLS_TX;
  netdev->hw_features |= NETIF_F_HW_TLS_TX;
 }

 if (caps & MLX5_ACCEL_TLS_RX) {
  netdev->features |= NETIF_F_HW_TLS_RX;
  netdev->hw_features |= NETIF_F_HW_TLS_RX;
 }

 if (!(caps & MLX5_ACCEL_TLS_LRO)) {
  netdev->features &= ~NETIF_F_LRO;
  netdev->hw_features &= ~NETIF_F_LRO;
 }

 netdev->tlsdev_ops = &mlx5e_tls_ops;
}
