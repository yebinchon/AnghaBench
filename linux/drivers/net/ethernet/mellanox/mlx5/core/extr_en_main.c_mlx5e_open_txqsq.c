
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int cqn; } ;
struct TYPE_5__ {TYPE_1__ mcq; } ;
struct mlx5e_txqsq {size_t txq_ix; int state; int sqn; int min_inline_mode; int wq_ctrl; TYPE_2__ cq; } ;
struct mlx5e_sq_param {int dummy; } ;
struct mlx5e_params {scalar_t__ tx_dim_enabled; } ;
struct mlx5e_create_sq_param {int tis_lst_sz; int min_inline_mode; int * wq_ctrl; int cqn; scalar_t__ tisn; } ;
struct mlx5e_channel {int netdev; TYPE_3__* priv; int mdev; } ;
struct TYPE_6__ {scalar_t__* tx_rates; } ;


 int BIT (int ) ;
 int MLX5E_SQ_STATE_AM ;
 int mlx5e_alloc_txqsq (struct mlx5e_channel*,int,struct mlx5e_params*,struct mlx5e_sq_param*,struct mlx5e_txqsq*,int) ;
 int mlx5e_create_sq_rdy (int ,struct mlx5e_sq_param*,struct mlx5e_create_sq_param*,int *) ;
 int mlx5e_free_txqsq (struct mlx5e_txqsq*) ;
 int mlx5e_set_sq_maxrate (int ,struct mlx5e_txqsq*,scalar_t__) ;

__attribute__((used)) static int mlx5e_open_txqsq(struct mlx5e_channel *c,
       u32 tisn,
       int txq_ix,
       struct mlx5e_params *params,
       struct mlx5e_sq_param *param,
       struct mlx5e_txqsq *sq,
       int tc)
{
 struct mlx5e_create_sq_param csp = {};
 u32 tx_rate;
 int err;

 err = mlx5e_alloc_txqsq(c, txq_ix, params, param, sq, tc);
 if (err)
  return err;

 csp.tisn = tisn;
 csp.tis_lst_sz = 1;
 csp.cqn = sq->cq.mcq.cqn;
 csp.wq_ctrl = &sq->wq_ctrl;
 csp.min_inline_mode = sq->min_inline_mode;
 err = mlx5e_create_sq_rdy(c->mdev, param, &csp, &sq->sqn);
 if (err)
  goto err_free_txqsq;

 tx_rate = c->priv->tx_rates[sq->txq_ix];
 if (tx_rate)
  mlx5e_set_sq_maxrate(c->netdev, sq, tx_rate);

 if (params->tx_dim_enabled)
  sq->state |= BIT(MLX5E_SQ_STATE_AM);

 return 0;

err_free_txqsq:
 mlx5e_free_txqsq(sq);

 return err;
}
