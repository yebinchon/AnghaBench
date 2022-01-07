
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dim_cq_moder {int member_1; int member_0; } ;
struct mlx5e_params {struct dim_cq_moder tx_cq_moderation; struct dim_cq_moder rx_cq_moderation; } ;
struct mlx5e_channel_param {int xdp_sq; int rq; int icosq; int tx_cq; int rx_cq; int icosq_cq; } ;
struct TYPE_9__ {int cq; } ;
struct TYPE_7__ {int cq; } ;
struct TYPE_8__ {int cq; } ;
struct mlx5e_channel {TYPE_3__ icosq; TYPE_1__ xdpsq; TYPE_2__ rq; TYPE_1__ rq_xdpsq; scalar_t__ xdp; int napi; } ;


 int mlx5e_close_cq (int *) ;
 int mlx5e_close_icosq (TYPE_3__*) ;
 int mlx5e_close_rq (TYPE_2__*) ;
 int mlx5e_close_sqs (struct mlx5e_channel*) ;
 int mlx5e_close_tx_cqs (struct mlx5e_channel*) ;
 int mlx5e_close_xdpsq (TYPE_1__*) ;
 int mlx5e_open_cq (struct mlx5e_channel*,struct dim_cq_moder,int *,int *) ;
 int mlx5e_open_icosq (struct mlx5e_channel*,struct mlx5e_params*,int *,TYPE_3__*) ;
 int mlx5e_open_rq (struct mlx5e_channel*,struct mlx5e_params*,int *,int *,int *,TYPE_2__*) ;
 int mlx5e_open_sqs (struct mlx5e_channel*,struct mlx5e_params*,struct mlx5e_channel_param*) ;
 int mlx5e_open_tx_cqs (struct mlx5e_channel*,struct mlx5e_params*,struct mlx5e_channel_param*) ;
 int mlx5e_open_xdpsq (struct mlx5e_channel*,struct mlx5e_params*,int *,int *,TYPE_1__*,int) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;

__attribute__((used)) static int mlx5e_open_queues(struct mlx5e_channel *c,
        struct mlx5e_params *params,
        struct mlx5e_channel_param *cparam)
{
 struct dim_cq_moder icocq_moder = {0, 0};
 int err;

 err = mlx5e_open_cq(c, icocq_moder, &cparam->icosq_cq, &c->icosq.cq);
 if (err)
  return err;

 err = mlx5e_open_tx_cqs(c, params, cparam);
 if (err)
  goto err_close_icosq_cq;

 err = mlx5e_open_cq(c, params->tx_cq_moderation, &cparam->tx_cq, &c->xdpsq.cq);
 if (err)
  goto err_close_tx_cqs;

 err = mlx5e_open_cq(c, params->rx_cq_moderation, &cparam->rx_cq, &c->rq.cq);
 if (err)
  goto err_close_xdp_tx_cqs;


 err = c->xdp ? mlx5e_open_cq(c, params->tx_cq_moderation,
         &cparam->tx_cq, &c->rq_xdpsq.cq) : 0;
 if (err)
  goto err_close_rx_cq;

 napi_enable(&c->napi);

 err = mlx5e_open_icosq(c, params, &cparam->icosq, &c->icosq);
 if (err)
  goto err_disable_napi;

 err = mlx5e_open_sqs(c, params, cparam);
 if (err)
  goto err_close_icosq;

 if (c->xdp) {
  err = mlx5e_open_xdpsq(c, params, &cparam->xdp_sq, ((void*)0),
           &c->rq_xdpsq, 0);
  if (err)
   goto err_close_sqs;
 }

 err = mlx5e_open_rq(c, params, &cparam->rq, ((void*)0), ((void*)0), &c->rq);
 if (err)
  goto err_close_xdp_sq;

 err = mlx5e_open_xdpsq(c, params, &cparam->xdp_sq, ((void*)0), &c->xdpsq, 1);
 if (err)
  goto err_close_rq;

 return 0;

err_close_rq:
 mlx5e_close_rq(&c->rq);

err_close_xdp_sq:
 if (c->xdp)
  mlx5e_close_xdpsq(&c->rq_xdpsq);

err_close_sqs:
 mlx5e_close_sqs(c);

err_close_icosq:
 mlx5e_close_icosq(&c->icosq);

err_disable_napi:
 napi_disable(&c->napi);

 if (c->xdp)
  mlx5e_close_cq(&c->rq_xdpsq.cq);

err_close_rx_cq:
 mlx5e_close_cq(&c->rq.cq);

err_close_xdp_tx_cqs:
 mlx5e_close_cq(&c->xdpsq.cq);

err_close_tx_cqs:
 mlx5e_close_tx_cqs(c);

err_close_icosq_cq:
 mlx5e_close_cq(&c->icosq.cq);

 return err;
}
