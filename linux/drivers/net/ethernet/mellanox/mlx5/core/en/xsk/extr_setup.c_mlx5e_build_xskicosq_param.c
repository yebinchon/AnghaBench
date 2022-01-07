
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5e_sq_param {void* sqc; } ;
struct mlx5e_priv {int dummy; } ;


 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_SET (void*,void*,int ,int ) ;
 int log_wq_sz ;
 int mlx5e_build_sq_param_common (struct mlx5e_priv*,struct mlx5e_sq_param*) ;
 void* wq ;

__attribute__((used)) static void mlx5e_build_xskicosq_param(struct mlx5e_priv *priv,
           u8 log_wq_size,
           struct mlx5e_sq_param *param)
{
 void *sqc = param->sqc;
 void *wq = MLX5_ADDR_OF(sqc, sqc, wq);

 mlx5e_build_sq_param_common(priv, param);

 MLX5_SET(wq, wq, log_wq_sz, log_wq_size);
}
