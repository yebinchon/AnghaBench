
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttc_params {int * inner_ttc; int any_tt_tirn; } ;
struct TYPE_4__ {int inner_ttc; } ;
struct mlx5e_priv {TYPE_2__ fs; TYPE_1__* direct_tir; } ;
struct TYPE_3__ {int tirn; } ;



void mlx5e_set_ttc_basic_params(struct mlx5e_priv *priv,
    struct ttc_params *ttc_params)
{
 ttc_params->any_tt_tirn = priv->direct_tir[0].tirn;
 ttc_params->inner_ttc = &priv->fs.inner_ttc;
}
