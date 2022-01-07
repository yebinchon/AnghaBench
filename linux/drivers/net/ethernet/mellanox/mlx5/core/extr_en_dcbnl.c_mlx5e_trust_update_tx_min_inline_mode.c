
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ trust_state; } ;
struct mlx5e_priv {TYPE_1__ dcbx_dp; int mdev; } ;
struct mlx5e_params {scalar_t__ tx_min_inline_mode; } ;


 scalar_t__ MLX5_INLINE_MODE_IP ;
 scalar_t__ MLX5_INLINE_MODE_L2 ;
 scalar_t__ MLX5_QPTS_TRUST_DSCP ;
 int mlx5_query_min_inline (int ,scalar_t__*) ;

__attribute__((used)) static void mlx5e_trust_update_tx_min_inline_mode(struct mlx5e_priv *priv,
        struct mlx5e_params *params)
{
 mlx5_query_min_inline(priv->mdev, &params->tx_min_inline_mode);
 if (priv->dcbx_dp.trust_state == MLX5_QPTS_TRUST_DSCP &&
     params->tx_min_inline_mode == MLX5_INLINE_MODE_L2)
  params->tx_min_inline_mode = MLX5_INLINE_MODE_IP;
}
