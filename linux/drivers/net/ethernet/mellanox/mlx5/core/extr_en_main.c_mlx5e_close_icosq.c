
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_icosq {int sqn; struct mlx5e_channel* channel; } ;
struct mlx5e_channel {int mdev; } ;


 int mlx5e_destroy_sq (int ,int ) ;
 int mlx5e_free_icosq (struct mlx5e_icosq*) ;

void mlx5e_close_icosq(struct mlx5e_icosq *sq)
{
 struct mlx5e_channel *c = sq->channel;

 mlx5e_destroy_sq(c->mdev, sq->sqn);
 mlx5e_free_icosq(sq);
}
