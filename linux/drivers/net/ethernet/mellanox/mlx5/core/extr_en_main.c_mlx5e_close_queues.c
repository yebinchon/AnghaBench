
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int cq; } ;
struct TYPE_4__ {int cq; } ;
struct TYPE_5__ {int cq; } ;
struct mlx5e_channel {TYPE_3__ icosq; TYPE_1__ xdpsq; TYPE_2__ rq; TYPE_1__ rq_xdpsq; scalar_t__ xdp; int napi; } ;


 int mlx5e_close_cq (int *) ;
 int mlx5e_close_icosq (TYPE_3__*) ;
 int mlx5e_close_rq (TYPE_2__*) ;
 int mlx5e_close_sqs (struct mlx5e_channel*) ;
 int mlx5e_close_tx_cqs (struct mlx5e_channel*) ;
 int mlx5e_close_xdpsq (TYPE_1__*) ;
 int napi_disable (int *) ;

__attribute__((used)) static void mlx5e_close_queues(struct mlx5e_channel *c)
{
 mlx5e_close_xdpsq(&c->xdpsq);
 mlx5e_close_rq(&c->rq);
 if (c->xdp)
  mlx5e_close_xdpsq(&c->rq_xdpsq);
 mlx5e_close_sqs(c);
 mlx5e_close_icosq(&c->icosq);
 napi_disable(&c->napi);
 if (c->xdp)
  mlx5e_close_cq(&c->rq_xdpsq.cq);
 mlx5e_close_cq(&c->rq.cq);
 mlx5e_close_cq(&c->xdpsq.cq);
 mlx5e_close_tx_cqs(c);
 mlx5e_close_cq(&c->icosq.cq);
}
