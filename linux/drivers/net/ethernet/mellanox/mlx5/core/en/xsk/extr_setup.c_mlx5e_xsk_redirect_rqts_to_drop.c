
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refcnt; } ;
struct mlx5e_priv {TYPE_1__ xsk; } ;
struct mlx5e_channels {int num; TYPE_2__** c; } ;
struct TYPE_4__ {int state; } ;


 int MLX5E_CHANNEL_STATE_XSK ;
 int mlx5e_xsk_redirect_rqt_to_drop (struct mlx5e_priv*,int) ;
 int test_bit (int ,int ) ;

void mlx5e_xsk_redirect_rqts_to_drop(struct mlx5e_priv *priv, struct mlx5e_channels *chs)
{
 int i;

 if (!priv->xsk.refcnt)
  return;

 for (i = 0; i < chs->num; i++) {
  if (!test_bit(MLX5E_CHANNEL_STATE_XSK, chs->c[i]->state))
   continue;

  mlx5e_xsk_redirect_rqt_to_drop(priv, i);
 }
}
