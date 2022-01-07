
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cq; } ;
struct TYPE_6__ {int cq; } ;
struct TYPE_5__ {int cq; } ;
struct mlx5e_channel {TYPE_1__ xsksq; TYPE_3__ xskicosq; TYPE_2__ xskrq; int napi; int state; } ;


 int MLX5E_CHANNEL_STATE_XSK ;
 int clear_bit (int ,int ) ;
 int mlx5e_close_cq (int *) ;
 int mlx5e_close_icosq (TYPE_3__*) ;
 int mlx5e_close_rq (TYPE_2__*) ;
 int mlx5e_close_xdpsq (TYPE_1__*) ;
 int napi_synchronize (int *) ;

void mlx5e_close_xsk(struct mlx5e_channel *c)
{
 clear_bit(MLX5E_CHANNEL_STATE_XSK, c->state);
 napi_synchronize(&c->napi);

 mlx5e_close_rq(&c->xskrq);
 mlx5e_close_cq(&c->xskrq.cq);
 mlx5e_close_icosq(&c->xskicosq);
 mlx5e_close_cq(&c->xskicosq.cq);
 mlx5e_close_xdpsq(&c->xsksq);
 mlx5e_close_cq(&c->xsksq.cq);
}
