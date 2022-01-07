
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct xdp_umem {int dummy; } ;
struct TYPE_4__ {int xdp_prog; } ;
struct TYPE_3__ {struct mlx5e_channel** c; TYPE_2__ params; } ;
struct mlx5e_priv {int xsk; TYPE_1__ channels; int state; } ;
struct mlx5e_channel {int dummy; } ;


 int EINVAL ;
 int MLX5E_STATE_OPENED ;
 int mlx5e_close_xsk (struct mlx5e_channel*) ;
 int mlx5e_deactivate_xsk (struct mlx5e_channel*) ;
 struct xdp_umem* mlx5e_xsk_get_umem (TYPE_2__*,int *,size_t) ;
 int mlx5e_xsk_redirect_rqt_to_drop (struct mlx5e_priv*,size_t) ;
 int mlx5e_xsk_remove_umem (int *,size_t) ;
 int mlx5e_xsk_unmap_umem (struct mlx5e_priv*,struct xdp_umem*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mlx5e_xsk_disable_locked(struct mlx5e_priv *priv, u16 ix)
{
 struct xdp_umem *umem = mlx5e_xsk_get_umem(&priv->channels.params,
         &priv->xsk, ix);
 struct mlx5e_channel *c;

 if (unlikely(!umem))
  return -EINVAL;

 if (!test_bit(MLX5E_STATE_OPENED, &priv->state))
  goto remove_umem;


 if (!priv->channels.params.xdp_prog)
  goto remove_umem;

 c = priv->channels.c[ix];
 mlx5e_xsk_redirect_rqt_to_drop(priv, ix);
 mlx5e_deactivate_xsk(c);
 mlx5e_close_xsk(c);

remove_umem:
 mlx5e_xsk_remove_umem(&priv->xsk, ix);
 mlx5e_xsk_unmap_umem(priv, umem);

 return 0;
}
