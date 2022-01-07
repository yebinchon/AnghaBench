
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_txqsq {size_t txq_ix; } ;
struct TYPE_2__ {int num; struct mlx5e_channel** c; } ;
struct mlx5e_priv {struct mlx5e_txqsq** txq2sq; TYPE_1__ channels; } ;
struct mlx5e_channel {int num_tc; struct mlx5e_txqsq* sq; } ;



__attribute__((used)) static void mlx5e_build_tx2sq_maps(struct mlx5e_priv *priv)
{
 struct mlx5e_channel *c;
 struct mlx5e_txqsq *sq;
 int i, tc;

 for (i = 0; i < priv->channels.num; i++) {
  c = priv->channels.c[i];
  for (tc = 0; tc < c->num_tc; tc++) {
   sq = &c->sq[tc];
   priv->txq2sq[sq->txq_ix] = sq;
  }
 }
}
