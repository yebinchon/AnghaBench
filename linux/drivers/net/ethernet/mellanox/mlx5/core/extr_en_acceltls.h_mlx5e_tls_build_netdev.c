
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int mdev; } ;


 scalar_t__ mlx5_accel_is_ktls_device (int ) ;
 int mlx5e_ktls_build_netdev (struct mlx5e_priv*) ;

__attribute__((used)) static inline void mlx5e_tls_build_netdev(struct mlx5e_priv *priv)
{
 if (mlx5_accel_is_ktls_device(priv->mdev))
  mlx5e_ktls_build_netdev(priv);
}
