
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_dcbx {scalar_t__ mode; } ;
struct mlx5e_priv {int mdev; struct mlx5e_dcbx dcbx; } ;


 scalar_t__ MLX5E_DCBX_PARAM_VER_OPER_HOST ;
 int MLX5_CAP_GEN (int ,struct mlx5e_dcbx*) ;
 int mlx5e_dcbnl_set_dcbx_mode (struct mlx5e_priv*,scalar_t__) ;

__attribute__((used)) static int mlx5e_dcbnl_switch_to_host_mode(struct mlx5e_priv *priv)
{
 struct mlx5e_dcbx *dcbx = &priv->dcbx;
 int err;

 if (!MLX5_CAP_GEN(priv->mdev, dcbx))
  return 0;

 if (dcbx->mode == MLX5E_DCBX_PARAM_VER_OPER_HOST)
  return 0;

 err = mlx5e_dcbnl_set_dcbx_mode(priv, MLX5E_DCBX_PARAM_VER_OPER_HOST);
 if (err)
  return err;

 dcbx->mode = MLX5E_DCBX_PARAM_VER_OPER_HOST;
 return 0;
}
