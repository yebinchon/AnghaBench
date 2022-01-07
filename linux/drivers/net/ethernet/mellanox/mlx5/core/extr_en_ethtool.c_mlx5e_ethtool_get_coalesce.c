
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dim_cq_moder {int pkts; int usec; } ;
struct TYPE_3__ {int tx_dim_enabled; struct dim_cq_moder tx_cq_moderation; int rx_dim_enabled; struct dim_cq_moder rx_cq_moderation; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct mlx5e_priv {TYPE_2__ channels; int mdev; } ;
struct ethtool_coalesce {int use_adaptive_tx_coalesce; int tx_max_coalesced_frames; int tx_coalesce_usecs; int use_adaptive_rx_coalesce; int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;


 int EOPNOTSUPP ;
 int MLX5_CAP_GEN (int ,int ) ;
 int cq_moderation ;

int mlx5e_ethtool_get_coalesce(struct mlx5e_priv *priv,
          struct ethtool_coalesce *coal)
{
 struct dim_cq_moder *rx_moder, *tx_moder;

 if (!MLX5_CAP_GEN(priv->mdev, cq_moderation))
  return -EOPNOTSUPP;

 rx_moder = &priv->channels.params.rx_cq_moderation;
 coal->rx_coalesce_usecs = rx_moder->usec;
 coal->rx_max_coalesced_frames = rx_moder->pkts;
 coal->use_adaptive_rx_coalesce = priv->channels.params.rx_dim_enabled;

 tx_moder = &priv->channels.params.tx_cq_moderation;
 coal->tx_coalesce_usecs = tx_moder->usec;
 coal->tx_max_coalesced_frames = tx_moder->pkts;
 coal->use_adaptive_tx_coalesce = priv->channels.params.tx_dim_enabled;

 return 0;
}
