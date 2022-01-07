
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_priv {int max_opened_tc; struct mlx5e_channel_stats* channel_stats; } ;
struct mlx5e_hv_vhca_per_ring_stats {int tx_bytes; int tx_packets; int rx_bytes; int rx_packets; } ;
struct TYPE_3__ {int bytes; int packets; } ;
struct mlx5e_channel_stats {TYPE_2__* sq; TYPE_1__ rq; } ;
struct TYPE_4__ {scalar_t__ bytes; scalar_t__ packets; } ;



__attribute__((used)) static void
mlx5e_hv_vhca_fill_ring_stats(struct mlx5e_priv *priv, int ch,
         struct mlx5e_hv_vhca_per_ring_stats *data)
{
 struct mlx5e_channel_stats *stats;
 int tc;

 stats = &priv->channel_stats[ch];
 data->rx_packets = stats->rq.packets;
 data->rx_bytes = stats->rq.bytes;

 for (tc = 0; tc < priv->max_opened_tc; tc++) {
  data->tx_packets += stats->sq[tc].packets;
  data->tx_bytes += stats->sq[tc].bytes;
 }
}
