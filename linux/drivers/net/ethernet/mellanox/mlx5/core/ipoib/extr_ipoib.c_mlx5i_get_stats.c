
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtnl_link_stats64 {int tx_dropped; int tx_bytes; int tx_packets; int rx_bytes; int rx_packets; } ;
struct net_device {int dummy; } ;
struct mlx5e_sw_stats {int tx_queue_dropped; int tx_bytes; int tx_packets; int rx_bytes; int rx_packets; } ;
struct TYPE_2__ {struct mlx5e_sw_stats sw; } ;
struct mlx5e_priv {TYPE_1__ stats; } ;


 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;
 int mlx5i_grp_sw_update_stats (struct mlx5e_priv*) ;

void mlx5i_get_stats(struct net_device *dev, struct rtnl_link_stats64 *stats)
{
 struct mlx5e_priv *priv = mlx5i_epriv(dev);
 struct mlx5e_sw_stats *sstats = &priv->stats.sw;

 mlx5i_grp_sw_update_stats(priv);

 stats->rx_packets = sstats->rx_packets;
 stats->rx_bytes = sstats->rx_bytes;
 stats->tx_packets = sstats->tx_packets;
 stats->tx_bytes = sstats->tx_bytes;
 stats->tx_dropped = sstats->tx_queue_dropped;
}
