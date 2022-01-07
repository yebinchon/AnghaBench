
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_cq {int mcq; int mdev; } ;


 int mlx5_core_destroy_cq (int ,int *) ;

__attribute__((used)) static void mlx5e_destroy_cq(struct mlx5e_cq *cq)
{
 mlx5_core_destroy_cq(cq->mdev, &cq->mcq);
}
