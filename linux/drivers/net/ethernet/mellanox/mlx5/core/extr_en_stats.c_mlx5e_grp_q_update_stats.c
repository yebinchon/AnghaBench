
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5e_qcounter_stats {void* rx_if_down_packets; void* rx_out_of_buffer; } ;
struct TYPE_2__ {struct mlx5e_qcounter_stats qcnt; } ;
struct mlx5e_priv {scalar_t__ drop_rq_q_counter; int mdev; scalar_t__ q_counter; TYPE_1__ stats; } ;
typedef int out ;


 void* MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int mlx5_core_query_q_counter (int ,scalar_t__,int ,int *,int) ;
 int out_of_buffer ;
 int query_q_counter_out ;

__attribute__((used)) static void mlx5e_grp_q_update_stats(struct mlx5e_priv *priv)
{
 struct mlx5e_qcounter_stats *qcnt = &priv->stats.qcnt;
 u32 out[MLX5_ST_SZ_DW(query_q_counter_out)];

 if (priv->q_counter &&
     !mlx5_core_query_q_counter(priv->mdev, priv->q_counter, 0, out,
           sizeof(out)))
  qcnt->rx_out_of_buffer = MLX5_GET(query_q_counter_out,
        out, out_of_buffer);
 if (priv->drop_rq_q_counter &&
     !mlx5_core_query_q_counter(priv->mdev, priv->drop_rq_q_counter, 0,
           out, sizeof(out)))
  qcnt->rx_if_down_packets = MLX5_GET(query_q_counter_out, out,
          out_of_buffer);
}
