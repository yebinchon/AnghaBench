
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_cq {int dummy; } ;


 int mlx5e_destroy_cq (struct mlx5e_cq*) ;
 int mlx5e_free_cq (struct mlx5e_cq*) ;

void mlx5e_close_cq(struct mlx5e_cq *cq)
{
 mlx5e_destroy_cq(cq);
 mlx5e_free_cq(cq);
}
