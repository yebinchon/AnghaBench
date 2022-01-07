
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_sw_stats {int tx_queue_dropped; int tx_bytes; int tx_packets; int rx_bytes; int rx_packets; int member_0; } ;
struct mlx5e_sq_stats {scalar_t__ dropped; scalar_t__ bytes; scalar_t__ packets; } ;
struct mlx5e_rq_stats {scalar_t__ bytes; scalar_t__ packets; } ;
struct TYPE_2__ {int sw; } ;
struct mlx5e_priv {int max_nch; int max_opened_tc; TYPE_1__ stats; struct mlx5e_channel_stats* channel_stats; } ;
struct mlx5e_channel_stats {struct mlx5e_sq_stats* sq; struct mlx5e_rq_stats rq; } ;
typedef int s ;


 int memcpy (int *,struct mlx5e_sw_stats*,int) ;

__attribute__((used)) static void mlx5i_grp_sw_update_stats(struct mlx5e_priv *priv)
{
 struct mlx5e_sw_stats s = { 0 };
 int i, j;

 for (i = 0; i < priv->max_nch; i++) {
  struct mlx5e_channel_stats *channel_stats;
  struct mlx5e_rq_stats *rq_stats;

  channel_stats = &priv->channel_stats[i];
  rq_stats = &channel_stats->rq;

  s.rx_packets += rq_stats->packets;
  s.rx_bytes += rq_stats->bytes;

  for (j = 0; j < priv->max_opened_tc; j++) {
   struct mlx5e_sq_stats *sq_stats = &channel_stats->sq[j];

   s.tx_packets += sq_stats->packets;
   s.tx_bytes += sq_stats->bytes;
   s.tx_queue_dropped += sq_stats->dropped;
  }
 }

 memcpy(&priv->stats.sw, &s, sizeof(s));
}
