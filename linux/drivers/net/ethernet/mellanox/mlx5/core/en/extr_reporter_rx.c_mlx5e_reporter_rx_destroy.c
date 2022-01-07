
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int rx_reporter; } ;


 int devlink_health_reporter_destroy (int ) ;

void mlx5e_reporter_rx_destroy(struct mlx5e_priv *priv)
{
 if (!priv->rx_reporter)
  return;

 devlink_health_reporter_destroy(priv->rx_reporter);
}
