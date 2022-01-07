
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_sq_param {int is_mpw; void* sqc; } ;
struct mlx5e_priv {int dummy; } ;
struct mlx5e_params {int log_sq_size; } ;


 int MLX5E_GET_PFLAG (struct mlx5e_params*,int ) ;
 int MLX5E_PFLAG_XDP_TX_MPWQE ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_SET (void*,void*,int ,int ) ;
 int log_wq_sz ;
 int mlx5e_build_sq_param_common (struct mlx5e_priv*,struct mlx5e_sq_param*) ;
 void* wq ;

void mlx5e_build_xdpsq_param(struct mlx5e_priv *priv,
        struct mlx5e_params *params,
        struct mlx5e_sq_param *param)
{
 void *sqc = param->sqc;
 void *wq = MLX5_ADDR_OF(sqc, sqc, wq);

 mlx5e_build_sq_param_common(priv, param);
 MLX5_SET(wq, wq, log_wq_sz, params->log_sq_size);
 param->is_mpw = MLX5E_GET_PFLAG(params, MLX5E_PFLAG_XDP_TX_MPWQE);
}
