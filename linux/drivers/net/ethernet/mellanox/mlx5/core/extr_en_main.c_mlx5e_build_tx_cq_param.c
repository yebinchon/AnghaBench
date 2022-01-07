
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int cq_period_mode; } ;
struct mlx5e_params {TYPE_1__ tx_cq_moderation; int log_sq_size; } ;
struct mlx5e_cq_param {int cq_period_mode; void* cqc; } ;


 int MLX5_SET (void*,void*,int ,int ) ;
 int log_cq_size ;
 int mlx5e_build_common_cq_param (struct mlx5e_priv*,struct mlx5e_cq_param*) ;

void mlx5e_build_tx_cq_param(struct mlx5e_priv *priv,
        struct mlx5e_params *params,
        struct mlx5e_cq_param *param)
{
 void *cqc = param->cqc;

 MLX5_SET(cqc, cqc, log_cq_size, params->log_sq_size);

 mlx5e_build_common_cq_param(priv, param);
 param->cq_period_mode = params->tx_cq_moderation.cq_period_mode;
}
