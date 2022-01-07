
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int netdev; } ;


 int mlx5e_health_destroy_reporters (struct mlx5e_priv*) ;
 int mlx5e_ipsec_cleanup (struct mlx5e_priv*) ;
 int mlx5e_netdev_cleanup (int ,struct mlx5e_priv*) ;
 int mlx5e_tls_cleanup (struct mlx5e_priv*) ;

__attribute__((used)) static void mlx5e_nic_cleanup(struct mlx5e_priv *priv)
{
 mlx5e_health_destroy_reporters(priv);
 mlx5e_tls_cleanup(priv);
 mlx5e_ipsec_cleanup(priv);
 mlx5e_netdev_cleanup(priv->netdev, priv);
}
