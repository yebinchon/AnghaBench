
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct xdp_umem {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct TYPE_4__ {int num_channels; int xsk; scalar_t__ xdp_prog; } ;
struct mlx5e_channels {int num; int * c; TYPE_1__ params; } ;
struct mlx5e_channel_param {int dummy; } ;
struct mlx5e_channel {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int kvfree (struct mlx5e_channel_param*) ;
 struct mlx5e_channel_param* kvzalloc (int,int ) ;
 int mlx5e_build_channel_param (struct mlx5e_priv*,TYPE_1__*,struct mlx5e_channel_param*) ;
 int mlx5e_close_channel (int ) ;
 int mlx5e_health_channels_update (struct mlx5e_priv*) ;
 int mlx5e_open_channel (struct mlx5e_priv*,int,TYPE_1__*,struct mlx5e_channel_param*,struct xdp_umem*,int *) ;
 struct xdp_umem* mlx5e_xsk_get_umem (TYPE_1__*,int ,int) ;

int mlx5e_open_channels(struct mlx5e_priv *priv,
   struct mlx5e_channels *chs)
{
 struct mlx5e_channel_param *cparam;
 int err = -ENOMEM;
 int i;

 chs->num = chs->params.num_channels;

 chs->c = kcalloc(chs->num, sizeof(struct mlx5e_channel *), GFP_KERNEL);
 cparam = kvzalloc(sizeof(struct mlx5e_channel_param), GFP_KERNEL);
 if (!chs->c || !cparam)
  goto err_free;

 mlx5e_build_channel_param(priv, &chs->params, cparam);
 for (i = 0; i < chs->num; i++) {
  struct xdp_umem *umem = ((void*)0);

  if (chs->params.xdp_prog)
   umem = mlx5e_xsk_get_umem(&chs->params, chs->params.xsk, i);

  err = mlx5e_open_channel(priv, i, &chs->params, cparam, umem, &chs->c[i]);
  if (err)
   goto err_close_channels;
 }

 mlx5e_health_channels_update(priv);
 kvfree(cparam);
 return 0;

err_close_channels:
 for (i--; i >= 0; i--)
  mlx5e_close_channel(chs->c[i]);

err_free:
 kfree(chs->c);
 kvfree(cparam);
 chs->num = 0;
 return err;
}
