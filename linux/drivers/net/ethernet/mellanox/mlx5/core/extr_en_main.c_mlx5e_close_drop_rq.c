
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rq {int cq; } ;


 int mlx5e_destroy_cq (int *) ;
 int mlx5e_destroy_rq (struct mlx5e_rq*) ;
 int mlx5e_free_cq (int *) ;
 int mlx5e_free_rq (struct mlx5e_rq*) ;

void mlx5e_close_drop_rq(struct mlx5e_rq *drop_rq)
{
 mlx5e_destroy_rq(drop_rq);
 mlx5e_free_rq(drop_rq);
 mlx5e_destroy_cq(&drop_rq->cq);
 mlx5e_free_cq(&drop_rq->cq);
}
