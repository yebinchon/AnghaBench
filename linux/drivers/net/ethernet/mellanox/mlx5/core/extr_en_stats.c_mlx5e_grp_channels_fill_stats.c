
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int ever_used; } ;
struct mlx5e_priv {int max_nch; int max_opened_tc; TYPE_2__* channel_stats; TYPE_1__ xsk; } ;
struct TYPE_4__ {int xdpsq; int xsksq; int * sq; int rq_xdpsq; int xskrq; int rq; int ch; } ;


 int MLX5E_READ_CTR64_CPU (int *,int ,int) ;
 int NUM_CH_STATS ;
 int NUM_RQ_STATS ;
 int NUM_RQ_XDPSQ_STATS ;
 int NUM_SQ_STATS ;
 int NUM_XDPSQ_STATS ;
 int NUM_XSKRQ_STATS ;
 int NUM_XSKSQ_STATS ;
 int ch_stats_desc ;
 int rq_stats_desc ;
 int rq_xdpsq_stats_desc ;
 int sq_stats_desc ;
 int xdpsq_stats_desc ;
 int xskrq_stats_desc ;
 int xsksq_stats_desc ;

__attribute__((used)) static int mlx5e_grp_channels_fill_stats(struct mlx5e_priv *priv, u64 *data,
      int idx)
{
 bool is_xsk = priv->xsk.ever_used;
 int max_nch = priv->max_nch;
 int i, j, tc;

 for (i = 0; i < max_nch; i++)
  for (j = 0; j < NUM_CH_STATS; j++)
   data[idx++] =
    MLX5E_READ_CTR64_CPU(&priv->channel_stats[i].ch,
           ch_stats_desc, j);

 for (i = 0; i < max_nch; i++) {
  for (j = 0; j < NUM_RQ_STATS; j++)
   data[idx++] =
    MLX5E_READ_CTR64_CPU(&priv->channel_stats[i].rq,
           rq_stats_desc, j);
  for (j = 0; j < NUM_XSKRQ_STATS * is_xsk; j++)
   data[idx++] =
    MLX5E_READ_CTR64_CPU(&priv->channel_stats[i].xskrq,
           xskrq_stats_desc, j);
  for (j = 0; j < NUM_RQ_XDPSQ_STATS; j++)
   data[idx++] =
    MLX5E_READ_CTR64_CPU(&priv->channel_stats[i].rq_xdpsq,
           rq_xdpsq_stats_desc, j);
 }

 for (tc = 0; tc < priv->max_opened_tc; tc++)
  for (i = 0; i < max_nch; i++)
   for (j = 0; j < NUM_SQ_STATS; j++)
    data[idx++] =
     MLX5E_READ_CTR64_CPU(&priv->channel_stats[i].sq[tc],
            sq_stats_desc, j);

 for (i = 0; i < max_nch; i++) {
  for (j = 0; j < NUM_XSKSQ_STATS * is_xsk; j++)
   data[idx++] =
    MLX5E_READ_CTR64_CPU(&priv->channel_stats[i].xsksq,
           xsksq_stats_desc, j);
  for (j = 0; j < NUM_XDPSQ_STATS; j++)
   data[idx++] =
    MLX5E_READ_CTR64_CPU(&priv->channel_stats[i].xdpsq,
           xdpsq_stats_desc, j);
 }

 return idx;
}
