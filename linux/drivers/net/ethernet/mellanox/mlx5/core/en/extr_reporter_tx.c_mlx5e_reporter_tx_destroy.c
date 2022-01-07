
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int tx_reporter; } ;


 int devlink_health_reporter_destroy (int ) ;

void mlx5e_reporter_tx_destroy(struct mlx5e_priv *priv)
{
 if (!priv->tx_reporter)
  return;

 devlink_health_reporter_destroy(priv->tx_reporter);
}
