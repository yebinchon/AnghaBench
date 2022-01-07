
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hairpin {int num_channels; int * sqn; int peer_mdev; int peer_gone; int * rqn; int func_mdev; } ;


 int mlx5_core_destroy_rq (int ,int ) ;
 int mlx5_core_destroy_sq (int ,int ) ;

__attribute__((used)) static void mlx5_hairpin_destroy_queues(struct mlx5_hairpin *hp)
{
 int i;

 for (i = 0; i < hp->num_channels; i++) {
  mlx5_core_destroy_rq(hp->func_mdev, hp->rqn[i]);
  if (!hp->peer_gone)
   mlx5_core_destroy_sq(hp->peer_mdev, hp->sqn[i]);
 }
}
