
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {scalar_t__ rx_reporter; scalar_t__ tx_reporter; } ;


 int DEVLINK_HEALTH_REPORTER_STATE_HEALTHY ;
 int devlink_health_reporter_state_update (scalar_t__,int ) ;

void mlx5e_health_channels_update(struct mlx5e_priv *priv)
{
 if (priv->tx_reporter)
  devlink_health_reporter_state_update(priv->tx_reporter,
           DEVLINK_HEALTH_REPORTER_STATE_HEALTHY);
 if (priv->rx_reporter)
  devlink_health_reporter_state_update(priv->rx_reporter,
           DEVLINK_HEALTH_REPORTER_STATE_HEALTHY);
}
