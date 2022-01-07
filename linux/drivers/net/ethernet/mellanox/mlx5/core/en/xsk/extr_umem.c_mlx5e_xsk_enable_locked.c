
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct xdp_umem {int dummy; } ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {int xdp_prog; } ;
struct TYPE_2__ {struct mlx5e_channel** c; struct mlx5e_params params; } ;
struct mlx5e_priv {int mdev; int xsk; TYPE_1__ channels; int state; } ;
struct mlx5e_channel {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int MLX5E_STATE_OPENED ;
 int mlx5e_activate_xsk (struct mlx5e_channel*) ;
 int mlx5e_build_xsk_param (struct xdp_umem*,struct mlx5e_xsk_param*) ;
 int mlx5e_close_xsk (struct mlx5e_channel*) ;
 int mlx5e_deactivate_xsk (struct mlx5e_channel*) ;
 int mlx5e_open_xsk (struct mlx5e_priv*,struct mlx5e_params*,struct mlx5e_xsk_param*,struct xdp_umem*,struct mlx5e_channel*) ;
 int mlx5e_validate_xsk_param (struct mlx5e_params*,struct mlx5e_xsk_param*,int ) ;
 int mlx5e_xsk_add_umem (int *,struct xdp_umem*,size_t) ;
 int mlx5e_xsk_get_umem (struct mlx5e_params*,int *,size_t) ;
 int mlx5e_xsk_is_umem_sane (struct xdp_umem*) ;
 int mlx5e_xsk_map_umem (struct mlx5e_priv*,struct xdp_umem*) ;
 int mlx5e_xsk_redirect_rqt_to_channel (struct mlx5e_priv*,struct mlx5e_channel*) ;
 int mlx5e_xsk_remove_umem (int *,size_t) ;
 int mlx5e_xsk_unmap_umem (struct mlx5e_priv*,struct xdp_umem*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mlx5e_xsk_enable_locked(struct mlx5e_priv *priv,
       struct xdp_umem *umem, u16 ix)
{
 struct mlx5e_params *params = &priv->channels.params;
 struct mlx5e_xsk_param xsk;
 struct mlx5e_channel *c;
 int err;

 if (unlikely(mlx5e_xsk_get_umem(&priv->channels.params, &priv->xsk, ix)))
  return -EBUSY;

 if (unlikely(!mlx5e_xsk_is_umem_sane(umem)))
  return -EINVAL;

 err = mlx5e_xsk_map_umem(priv, umem);
 if (unlikely(err))
  return err;

 err = mlx5e_xsk_add_umem(&priv->xsk, umem, ix);
 if (unlikely(err))
  goto err_unmap_umem;

 mlx5e_build_xsk_param(umem, &xsk);

 if (!test_bit(MLX5E_STATE_OPENED, &priv->state)) {

  goto validate_closed;
 }

 if (!params->xdp_prog) {



  goto validate_closed;
 }

 c = priv->channels.c[ix];

 err = mlx5e_open_xsk(priv, params, &xsk, umem, c);
 if (unlikely(err))
  goto err_remove_umem;

 mlx5e_activate_xsk(c);





 err = mlx5e_xsk_redirect_rqt_to_channel(priv, priv->channels.c[ix]);
 if (unlikely(err))
  goto err_deactivate;

 return 0;

err_deactivate:
 mlx5e_deactivate_xsk(c);
 mlx5e_close_xsk(c);

err_remove_umem:
 mlx5e_xsk_remove_umem(&priv->xsk, ix);

err_unmap_umem:
 mlx5e_xsk_unmap_umem(priv, umem);

 return err;

validate_closed:



 if (!mlx5e_validate_xsk_param(params, &xsk, priv->mdev)) {
  err = -EINVAL;
  goto err_remove_umem;
 }

 return 0;
}
