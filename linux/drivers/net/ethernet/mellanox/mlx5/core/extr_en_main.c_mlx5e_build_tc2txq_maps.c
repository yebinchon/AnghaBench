
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_priv {int max_nch; int** channel_tc2txq; TYPE_1__* profile; } ;
struct TYPE_2__ {int max_tc; } ;



__attribute__((used)) static void mlx5e_build_tc2txq_maps(struct mlx5e_priv *priv)
{
 int i, tc;

 for (i = 0; i < priv->max_nch; i++)
  for (tc = 0; tc < priv->profile->max_tc; tc++)
   priv->channel_tc2txq[i][tc] = i + tc * priv->max_nch;
}
