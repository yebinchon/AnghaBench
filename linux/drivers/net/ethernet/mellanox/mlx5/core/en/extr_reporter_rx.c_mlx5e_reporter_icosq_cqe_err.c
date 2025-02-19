
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_priv {int rx_reporter; } ;
struct mlx5e_icosq {int sqn; TYPE_1__* channel; } ;
struct mlx5e_err_ctx {int recover; struct mlx5e_icosq* ctx; } ;
struct TYPE_2__ {struct mlx5e_priv* priv; } ;


 int MLX5E_REPORTER_PER_Q_MAX_LEN ;
 int mlx5e_health_report (struct mlx5e_priv*,int ,char*,struct mlx5e_err_ctx*) ;
 int mlx5e_rx_reporter_err_icosq_cqe_recover ;
 int sprintf (char*,char*,int) ;

void mlx5e_reporter_icosq_cqe_err(struct mlx5e_icosq *icosq)
{
 struct mlx5e_priv *priv = icosq->channel->priv;
 char err_str[MLX5E_REPORTER_PER_Q_MAX_LEN];
 struct mlx5e_err_ctx err_ctx = {};

 err_ctx.ctx = icosq;
 err_ctx.recover = mlx5e_rx_reporter_err_icosq_cqe_recover;
 sprintf(err_str, "ERR CQE on ICOSQ: 0x%x", icosq->sqn);

 mlx5e_health_report(priv, priv->rx_reporter, err_str, &err_ctx);
}
