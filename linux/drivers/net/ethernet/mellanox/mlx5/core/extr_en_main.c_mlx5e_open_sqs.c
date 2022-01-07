
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int max_nch; int ** tisn; } ;
struct mlx5e_params {int num_tc; } ;
struct mlx5e_channel_param {int sq; } ;
struct mlx5e_channel {int ix; size_t lag_port; int * sq; struct mlx5e_priv* priv; } ;


 int mlx5e_close_txqsq (int *) ;
 int mlx5e_open_txqsq (struct mlx5e_channel*,int ,int,struct mlx5e_params*,int *,int *,int) ;

__attribute__((used)) static int mlx5e_open_sqs(struct mlx5e_channel *c,
     struct mlx5e_params *params,
     struct mlx5e_channel_param *cparam)
{
 struct mlx5e_priv *priv = c->priv;
 int err, tc;

 for (tc = 0; tc < params->num_tc; tc++) {
  int txq_ix = c->ix + tc * priv->max_nch;

  err = mlx5e_open_txqsq(c, c->priv->tisn[c->lag_port][tc], txq_ix,
           params, &cparam->sq, &c->sq[tc], tc);
  if (err)
   goto err_close_sqs;
 }

 return 0;

err_close_sqs:
 for (tc--; tc >= 0; tc--)
  mlx5e_close_txqsq(&c->sq[tc]);

 return err;
}
