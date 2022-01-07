
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int netdev; } ;


 int mlx5e_netdev_cleanup (int ,struct mlx5e_priv*) ;

__attribute__((used)) static void mlx5e_cleanup_rep(struct mlx5e_priv *priv)
{
 mlx5e_netdev_cleanup(priv->netdev, priv);
}
