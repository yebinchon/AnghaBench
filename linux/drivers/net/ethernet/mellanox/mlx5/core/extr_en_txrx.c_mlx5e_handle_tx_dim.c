
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event_ctr; } ;
struct mlx5e_txqsq {int dim; TYPE_1__ cq; int state; struct mlx5e_sq_stats* stats; } ;
struct mlx5e_sq_stats {int bytes; int packets; } ;
struct dim_sample {int dummy; } ;


 int MLX5E_SQ_STATE_AM ;
 int dim_update_sample (int ,int ,int ,struct dim_sample*) ;
 int net_dim (int *,struct dim_sample) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mlx5e_handle_tx_dim(struct mlx5e_txqsq *sq)
{
 struct mlx5e_sq_stats *stats = sq->stats;
 struct dim_sample dim_sample = {};

 if (unlikely(!test_bit(MLX5E_SQ_STATE_AM, &sq->state)))
  return;

 dim_update_sample(sq->cq.event_ctr, stats->packets, stats->bytes, &dim_sample);
 net_dim(&sq->dim, dim_sample);
}
