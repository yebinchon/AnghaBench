
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rq {int rqn; int mdev; } ;


 int mlx5_core_destroy_rq (int ,int ) ;

__attribute__((used)) static void mlx5e_destroy_rq(struct mlx5e_rq *rq)
{
 mlx5_core_destroy_rq(rq->mdev, rq->rqn);
}
