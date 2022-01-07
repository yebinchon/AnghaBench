
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcnt; } ;
struct mlx5e_priv {TYPE_1__ xsk; } ;
struct mlx5e_channels {int num; struct mlx5e_channel** c; } ;
struct mlx5e_channel {int state; } ;


 int MLX5E_CHANNEL_STATE_XSK ;
 int mlx5e_xsk_redirect_rqt_to_channel (struct mlx5e_priv*,struct mlx5e_channel*) ;
 int mlx5e_xsk_redirect_rqt_to_drop (struct mlx5e_priv*,int) ;
 int test_bit (int ,int ) ;
 scalar_t__ unlikely (int) ;

int mlx5e_xsk_redirect_rqts_to_channels(struct mlx5e_priv *priv, struct mlx5e_channels *chs)
{
 int err, i;

 if (!priv->xsk.refcnt)
  return 0;

 for (i = 0; i < chs->num; i++) {
  struct mlx5e_channel *c = chs->c[i];

  if (!test_bit(MLX5E_CHANNEL_STATE_XSK, c->state))
   continue;

  err = mlx5e_xsk_redirect_rqt_to_channel(priv, c);
  if (unlikely(err))
   goto err_stop;
 }

 return 0;

err_stop:
 for (i--; i >= 0; i--) {
  if (!test_bit(MLX5E_CHANNEL_STATE_XSK, chs->c[i]->state))
   continue;

  mlx5e_xsk_redirect_rqt_to_drop(priv, i);
 }

 return err;
}
