
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hairpin_params {int dummy; } ;
struct mlx5_hairpin {int num_channels; int * rqn; int func_mdev; int * sqn; int peer_mdev; } ;


 int mlx5_core_destroy_rq (int ,int ) ;
 int mlx5_core_destroy_sq (int ,int ) ;
 int mlx5_hairpin_create_rq (int ,struct mlx5_hairpin_params*,int *) ;
 int mlx5_hairpin_create_sq (int ,struct mlx5_hairpin_params*,int *) ;

__attribute__((used)) static int mlx5_hairpin_create_queues(struct mlx5_hairpin *hp,
          struct mlx5_hairpin_params *params)
{
 int i, j, err;

 for (i = 0; i < hp->num_channels; i++) {
  err = mlx5_hairpin_create_rq(hp->func_mdev, params, &hp->rqn[i]);
  if (err)
   goto out_err_rq;
 }

 for (i = 0; i < hp->num_channels; i++) {
  err = mlx5_hairpin_create_sq(hp->peer_mdev, params, &hp->sqn[i]);
  if (err)
   goto out_err_sq;
 }

 return 0;

out_err_sq:
 for (j = 0; j < i; j++)
  mlx5_core_destroy_sq(hp->peer_mdev, hp->sqn[j]);
 i = hp->num_channels;
out_err_rq:
 for (j = 0; j < i; j++)
  mlx5_core_destroy_rq(hp->func_mdev, hp->rqn[j]);
 return err;
}
