
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cqn; } ;
struct TYPE_7__ {TYPE_2__ mcq; } ;
struct mlx5e_rq {int rqn; TYPE_3__ cq; TYPE_4__* channel; } ;
struct mlx5e_priv {int rx_reporter; } ;
struct mlx5e_icosq {int sqn; TYPE_1__* channel; } ;
struct mlx5e_err_ctx {int recover; struct mlx5e_rq* ctx; } ;
struct TYPE_8__ {struct mlx5e_priv* priv; struct mlx5e_icosq icosq; } ;
struct TYPE_5__ {int ix; } ;


 int MLX5E_REPORTER_PER_Q_MAX_LEN ;
 int mlx5e_health_report (struct mlx5e_priv*,int ,char*,struct mlx5e_err_ctx*) ;
 int mlx5e_rx_reporter_timeout_recover ;
 int sprintf (char*,char*,int,int,int,int) ;

void mlx5e_reporter_rx_timeout(struct mlx5e_rq *rq)
{
 struct mlx5e_icosq *icosq = &rq->channel->icosq;
 struct mlx5e_priv *priv = rq->channel->priv;
 char err_str[MLX5E_REPORTER_PER_Q_MAX_LEN];
 struct mlx5e_err_ctx err_ctx = {};

 err_ctx.ctx = rq;
 err_ctx.recover = mlx5e_rx_reporter_timeout_recover;
 sprintf(err_str, "RX timeout on channel: %d, ICOSQ: 0x%x RQ: 0x%x, CQ: 0x%x\n",
  icosq->channel->ix, icosq->sqn, rq->rqn, rq->cq.mcq.cqn);

 mlx5e_health_report(priv, priv->rx_reporter, err_str, &err_ctx);
}
