
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int mlx5e_reporter_rx_destroy (struct mlx5e_priv*) ;
 int mlx5e_reporter_tx_destroy (struct mlx5e_priv*) ;

void mlx5e_health_destroy_reporters(struct mlx5e_priv *priv)
{
 mlx5e_reporter_rx_destroy(priv);
 mlx5e_reporter_tx_destroy(priv);
}
