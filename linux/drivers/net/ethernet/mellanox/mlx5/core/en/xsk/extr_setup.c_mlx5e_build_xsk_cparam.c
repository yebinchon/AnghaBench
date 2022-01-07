
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct mlx5e_params {int dummy; } ;
struct mlx5e_channel_param {int icosq_cq; int tx_cq; int rx_cq; int icosq; int xdp_sq; int rq; } ;


 int MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE ;
 int mlx5e_build_ico_cq_param (struct mlx5e_priv*,int const,int *) ;
 int mlx5e_build_rq_param (struct mlx5e_priv*,struct mlx5e_params*,struct mlx5e_xsk_param*,int *) ;
 int mlx5e_build_rx_cq_param (struct mlx5e_priv*,struct mlx5e_params*,struct mlx5e_xsk_param*,int *) ;
 int mlx5e_build_tx_cq_param (struct mlx5e_priv*,struct mlx5e_params*,int *) ;
 int mlx5e_build_xdpsq_param (struct mlx5e_priv*,struct mlx5e_params*,int *) ;
 int mlx5e_build_xskicosq_param (struct mlx5e_priv*,int const,int *) ;

__attribute__((used)) static void mlx5e_build_xsk_cparam(struct mlx5e_priv *priv,
       struct mlx5e_params *params,
       struct mlx5e_xsk_param *xsk,
       struct mlx5e_channel_param *cparam)
{
 const u8 xskicosq_size = MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE;

 mlx5e_build_rq_param(priv, params, xsk, &cparam->rq);
 mlx5e_build_xdpsq_param(priv, params, &cparam->xdp_sq);
 mlx5e_build_xskicosq_param(priv, xskicosq_size, &cparam->icosq);
 mlx5e_build_rx_cq_param(priv, params, xsk, &cparam->rx_cq);
 mlx5e_build_tx_cq_param(priv, params, &cparam->tx_cq);
 mlx5e_build_ico_cq_param(priv, xskicosq_size, &cparam->icosq_cq);
}
