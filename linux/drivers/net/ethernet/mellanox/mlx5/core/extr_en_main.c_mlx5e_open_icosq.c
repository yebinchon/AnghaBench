
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_sq_param {int dummy; } ;
struct mlx5e_params {int tx_min_inline_mode; } ;
struct TYPE_3__ {int cqn; } ;
struct TYPE_4__ {TYPE_1__ mcq; } ;
struct mlx5e_icosq {int sqn; int wq_ctrl; TYPE_2__ cq; } ;
struct mlx5e_create_sq_param {int min_inline_mode; int * wq_ctrl; int cqn; } ;
struct mlx5e_channel {int mdev; } ;


 int mlx5e_alloc_icosq (struct mlx5e_channel*,struct mlx5e_sq_param*,struct mlx5e_icosq*) ;
 int mlx5e_create_sq_rdy (int ,struct mlx5e_sq_param*,struct mlx5e_create_sq_param*,int *) ;
 int mlx5e_free_icosq (struct mlx5e_icosq*) ;

int mlx5e_open_icosq(struct mlx5e_channel *c, struct mlx5e_params *params,
       struct mlx5e_sq_param *param, struct mlx5e_icosq *sq)
{
 struct mlx5e_create_sq_param csp = {};
 int err;

 err = mlx5e_alloc_icosq(c, param, sq);
 if (err)
  return err;

 csp.cqn = sq->cq.mcq.cqn;
 csp.wq_ctrl = &sq->wq_ctrl;
 csp.min_inline_mode = params->tx_min_inline_mode;
 err = mlx5e_create_sq_rdy(c->mdev, param, &csp, &sq->sqn);
 if (err)
  goto err_free_icosq;

 return 0;

err_free_icosq:
 mlx5e_free_icosq(sq);

 return err;
}
