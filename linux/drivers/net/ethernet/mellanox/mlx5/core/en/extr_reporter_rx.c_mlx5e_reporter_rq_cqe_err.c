
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_rq {int rqn; TYPE_1__* channel; } ;
struct mlx5e_priv {int rx_reporter; } ;
struct mlx5e_err_ctx {int recover; struct mlx5e_rq* ctx; } ;
struct TYPE_2__ {struct mlx5e_priv* priv; } ;


 int MLX5E_REPORTER_PER_Q_MAX_LEN ;
 int mlx5e_health_report (struct mlx5e_priv*,int ,char*,struct mlx5e_err_ctx*) ;
 int mlx5e_rx_reporter_err_rq_cqe_recover ;
 int sprintf (char*,char*,int) ;

void mlx5e_reporter_rq_cqe_err(struct mlx5e_rq *rq)
{
 struct mlx5e_priv *priv = rq->channel->priv;
 char err_str[MLX5E_REPORTER_PER_Q_MAX_LEN];
 struct mlx5e_err_ctx err_ctx = {};

 err_ctx.ctx = rq;
 err_ctx.recover = mlx5e_rx_reporter_err_rq_cqe_recover;
 sprintf(err_str, "ERR CQE on RQ: 0x%x", rq->rqn);

 mlx5e_health_report(priv, priv->rx_reporter, err_str, &err_ctx);
}
