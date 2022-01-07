
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_sq_param {void* sqc; } ;
struct mlx5e_priv {int mdev; } ;
struct mlx5e_params {int log_sq_size; } ;


 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_IPSEC_DEV (int ) ;
 int MLX5_SET (void*,void*,int,int) ;
 int log_wq_sz ;
 scalar_t__ mlx5_geneve_tx_allowed (int ) ;
 int mlx5e_build_sq_param_common (struct mlx5e_priv*,struct mlx5e_sq_param*) ;
 void* wq ;

__attribute__((used)) static void mlx5e_build_sq_param(struct mlx5e_priv *priv,
     struct mlx5e_params *params,
     struct mlx5e_sq_param *param)
{
 void *sqc = param->sqc;
 void *wq = MLX5_ADDR_OF(sqc, sqc, wq);
 bool allow_swp;

 allow_swp = mlx5_geneve_tx_allowed(priv->mdev) ||
      !!MLX5_IPSEC_DEV(priv->mdev);
 mlx5e_build_sq_param_common(priv, param);
 MLX5_SET(wq, wq, log_wq_sz, params->log_sq_size);
 MLX5_SET(sqc, sqc, allow_swp, allow_swp);
}
