
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ cq_period_mode; } ;
struct mlx5e_params {TYPE_1__ tx_cq_moderation; scalar_t__ tx_dim_enabled; } ;


 int MLX5E_PFLAG_TX_CQE_BASED_MODER ;
 int MLX5E_SET_PFLAG (struct mlx5e_params*,int ,int) ;
 scalar_t__ MLX5_CQ_PERIOD_MODE_START_FROM_CQE ;
 int mlx5_to_net_dim_cq_period_mode (int ) ;
 TYPE_1__ mlx5e_get_def_tx_moderation (int ) ;
 TYPE_1__ net_dim_get_def_tx_moderation (int ) ;

void mlx5e_set_tx_cq_mode_params(struct mlx5e_params *params, u8 cq_period_mode)
{
 if (params->tx_dim_enabled) {
  u8 dim_period_mode = mlx5_to_net_dim_cq_period_mode(cq_period_mode);

  params->tx_cq_moderation = net_dim_get_def_tx_moderation(dim_period_mode);
 } else {
  params->tx_cq_moderation = mlx5e_get_def_tx_moderation(cq_period_mode);
 }

 MLX5E_SET_PFLAG(params, MLX5E_PFLAG_TX_CQE_BASED_MODER,
   params->tx_cq_moderation.cq_period_mode ==
    MLX5_CQ_PERIOD_MODE_START_FROM_CQE);
}
