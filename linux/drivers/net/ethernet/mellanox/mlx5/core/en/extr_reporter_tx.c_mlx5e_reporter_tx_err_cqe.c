
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_txqsq {int sqn; TYPE_1__* channel; } ;
struct mlx5e_priv {int tx_reporter; } ;
struct mlx5e_err_ctx {int recover; struct mlx5e_txqsq* ctx; int member_0; } ;
struct TYPE_2__ {struct mlx5e_priv* priv; } ;


 int MLX5E_REPORTER_PER_Q_MAX_LEN ;
 int mlx5e_health_report (struct mlx5e_priv*,int ,char*,struct mlx5e_err_ctx*) ;
 int mlx5e_tx_reporter_err_cqe_recover ;
 int sprintf (char*,char*,int) ;

void mlx5e_reporter_tx_err_cqe(struct mlx5e_txqsq *sq)
{
 struct mlx5e_priv *priv = sq->channel->priv;
 char err_str[MLX5E_REPORTER_PER_Q_MAX_LEN];
 struct mlx5e_err_ctx err_ctx = {0};

 err_ctx.ctx = sq;
 err_ctx.recover = mlx5e_tx_reporter_err_cqe_recover;
 sprintf(err_str, "ERR CQE on SQ: 0x%x", sq->sqn);

 mlx5e_health_report(priv, priv->tx_reporter, err_str, &err_ctx);
}
