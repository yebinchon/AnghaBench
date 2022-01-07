
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hairpin {int num_channels; int * sqn; int peer_mdev; scalar_t__ peer_gone; int * rqn; int func_mdev; } ;


 int MLX5_RQC_STATE_RDY ;
 int MLX5_RQC_STATE_RST ;
 int MLX5_SQC_STATE_RDY ;
 int MLX5_SQC_STATE_RST ;
 int mlx5_hairpin_modify_rq (int ,int ,int ,int ,int ,int ) ;
 int mlx5_hairpin_modify_sq (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void mlx5_hairpin_unpair_queues(struct mlx5_hairpin *hp)
{
 int i;


 for (i = 0; i < hp->num_channels; i++)
  mlx5_hairpin_modify_rq(hp->func_mdev, hp->rqn[i], MLX5_RQC_STATE_RDY,
           MLX5_RQC_STATE_RST, 0, 0);


 if (hp->peer_gone)
  return;
 for (i = 0; i < hp->num_channels; i++)
  mlx5_hairpin_modify_sq(hp->peer_mdev, hp->sqn[i], MLX5_SQC_STATE_RDY,
           MLX5_SQC_STATE_RST, 0, 0);
}
