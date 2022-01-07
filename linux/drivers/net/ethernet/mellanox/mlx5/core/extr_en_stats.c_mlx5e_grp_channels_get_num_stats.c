
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ever_used; } ;
struct mlx5e_priv {int max_nch; int max_opened_tc; TYPE_1__ xsk; } ;


 int NUM_CH_STATS ;
 int NUM_RQ_STATS ;
 int NUM_RQ_XDPSQ_STATS ;
 int NUM_SQ_STATS ;
 int NUM_XDPSQ_STATS ;
 int NUM_XSKRQ_STATS ;
 int NUM_XSKSQ_STATS ;

__attribute__((used)) static int mlx5e_grp_channels_get_num_stats(struct mlx5e_priv *priv)
{
 int max_nch = priv->max_nch;

 return (NUM_RQ_STATS * max_nch) +
        (NUM_CH_STATS * max_nch) +
        (NUM_SQ_STATS * max_nch * priv->max_opened_tc) +
        (NUM_RQ_XDPSQ_STATS * max_nch) +
        (NUM_XDPSQ_STATS * max_nch) +
        (NUM_XSKRQ_STATS * max_nch * priv->xsk.ever_used) +
        (NUM_XSKSQ_STATS * max_nch * priv->xsk.ever_used);
}
