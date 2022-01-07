
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5e_priv {int dummy; } ;
struct mlx5e_params {int dummy; } ;
struct mlx5e_channel_param {int icosq_cq; int tx_cq; int rx_cq; int icosq; int xdp_sq; int sq; int rq; } ;


 int mlx5e_build_ico_cq_param (struct mlx5e_priv*,int ,int *) ;
 int mlx5e_build_icosq_log_wq_sz (struct mlx5e_params*,int *) ;
 int mlx5e_build_icosq_param (struct mlx5e_priv*,int ,int *) ;
 int mlx5e_build_rq_param (struct mlx5e_priv*,struct mlx5e_params*,int *,int *) ;
 int mlx5e_build_rx_cq_param (struct mlx5e_priv*,struct mlx5e_params*,int *,int *) ;
 int mlx5e_build_sq_param (struct mlx5e_priv*,struct mlx5e_params*,int *) ;
 int mlx5e_build_tx_cq_param (struct mlx5e_priv*,struct mlx5e_params*,int *) ;
 int mlx5e_build_xdpsq_param (struct mlx5e_priv*,struct mlx5e_params*,int *) ;

__attribute__((used)) static void mlx5e_build_channel_param(struct mlx5e_priv *priv,
          struct mlx5e_params *params,
          struct mlx5e_channel_param *cparam)
{
 u8 icosq_log_wq_sz;

 mlx5e_build_rq_param(priv, params, ((void*)0), &cparam->rq);

 icosq_log_wq_sz = mlx5e_build_icosq_log_wq_sz(params, &cparam->rq);

 mlx5e_build_sq_param(priv, params, &cparam->sq);
 mlx5e_build_xdpsq_param(priv, params, &cparam->xdp_sq);
 mlx5e_build_icosq_param(priv, icosq_log_wq_sz, &cparam->icosq);
 mlx5e_build_rx_cq_param(priv, params, ((void*)0), &cparam->rx_cq);
 mlx5e_build_tx_cq_param(priv, params, &cparam->tx_cq);
 mlx5e_build_ico_cq_param(priv, icosq_log_wq_sz, &cparam->icosq_cq);
}
