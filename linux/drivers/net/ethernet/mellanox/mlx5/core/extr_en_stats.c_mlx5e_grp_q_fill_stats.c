
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int qcnt; } ;
struct mlx5e_priv {TYPE_1__ stats; scalar_t__ drop_rq_q_counter; scalar_t__ q_counter; } ;


 int MLX5E_READ_CTR32_CPU (int *,int ,int) ;
 int NUM_DROP_RQ_COUNTERS ;
 int NUM_Q_COUNTERS ;
 int drop_rq_stats_desc ;
 int q_stats_desc ;

__attribute__((used)) static int mlx5e_grp_q_fill_stats(struct mlx5e_priv *priv, u64 *data, int idx)
{
 int i;

 for (i = 0; i < NUM_Q_COUNTERS && priv->q_counter; i++)
  data[idx++] = MLX5E_READ_CTR32_CPU(&priv->stats.qcnt,
         q_stats_desc, i);
 for (i = 0; i < NUM_DROP_RQ_COUNTERS && priv->drop_rq_q_counter; i++)
  data[idx++] = MLX5E_READ_CTR32_CPU(&priv->stats.qcnt,
         drop_rq_stats_desc, i);
 return idx;
}
