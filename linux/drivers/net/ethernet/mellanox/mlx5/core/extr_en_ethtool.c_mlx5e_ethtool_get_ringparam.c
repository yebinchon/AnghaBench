
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int log_rq_mtu_frames; int log_sq_size; } ;
struct TYPE_3__ {TYPE_2__ params; } ;
struct mlx5e_priv {TYPE_1__ channels; } ;
struct ethtool_ringparam {int rx_max_pending; int tx_max_pending; int rx_pending; int tx_pending; } ;


 int MLX5E_PARAMS_MAXIMUM_LOG_RQ_SIZE ;
 int MLX5E_PARAMS_MAXIMUM_LOG_SQ_SIZE ;

void mlx5e_ethtool_get_ringparam(struct mlx5e_priv *priv,
     struct ethtool_ringparam *param)
{
 param->rx_max_pending = 1 << MLX5E_PARAMS_MAXIMUM_LOG_RQ_SIZE;
 param->tx_max_pending = 1 << MLX5E_PARAMS_MAXIMUM_LOG_SQ_SIZE;
 param->rx_pending = 1 << priv->channels.params.log_rq_mtu_frames;
 param->tx_pending = 1 << priv->channels.params.log_sq_size;
}
