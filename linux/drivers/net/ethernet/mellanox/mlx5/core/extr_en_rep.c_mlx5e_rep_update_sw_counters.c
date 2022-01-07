
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtnl_link_stats64 {int tx_dropped; int tx_bytes; int tx_packets; int rx_bytes; int rx_packets; } ;
struct mlx5e_sw_stats {int tx_queue_dropped; int tx_bytes; int tx_packets; int rx_bytes; int rx_packets; } ;
struct TYPE_2__ {struct mlx5e_sw_stats sw; } ;
struct mlx5e_priv {TYPE_1__ stats; } ;


 int memset (struct mlx5e_sw_stats*,int ,int) ;
 int mlx5e_fold_sw_stats64 (struct mlx5e_priv*,struct rtnl_link_stats64*) ;

__attribute__((used)) static void mlx5e_rep_update_sw_counters(struct mlx5e_priv *priv)
{
 struct mlx5e_sw_stats *s = &priv->stats.sw;
 struct rtnl_link_stats64 stats64 = {};

 memset(s, 0, sizeof(*s));
 mlx5e_fold_sw_stats64(priv, &stats64);

 s->rx_packets = stats64.rx_packets;
 s->rx_bytes = stats64.rx_bytes;
 s->tx_packets = stats64.tx_packets;
 s->tx_bytes = stats64.tx_bytes;
 s->tx_queue_dropped = stats64.tx_dropped;
}
