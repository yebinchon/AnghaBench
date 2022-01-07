
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_xdpsq {int sqn; int state; struct mlx5e_channel* channel; } ;
struct mlx5e_channel {int mdev; int napi; } ;


 int MLX5E_SQ_STATE_ENABLED ;
 int clear_bit (int ,int *) ;
 int mlx5e_destroy_sq (int ,int ) ;
 int mlx5e_free_xdpsq (struct mlx5e_xdpsq*) ;
 int mlx5e_free_xdpsq_descs (struct mlx5e_xdpsq*) ;
 int napi_synchronize (int *) ;

void mlx5e_close_xdpsq(struct mlx5e_xdpsq *sq)
{
 struct mlx5e_channel *c = sq->channel;

 clear_bit(MLX5E_SQ_STATE_ENABLED, &sq->state);
 napi_synchronize(&c->napi);

 mlx5e_destroy_sq(c->mdev, sq->sqn);
 mlx5e_free_xdpsq_descs(sq);
 mlx5e_free_xdpsq(sq);
}
