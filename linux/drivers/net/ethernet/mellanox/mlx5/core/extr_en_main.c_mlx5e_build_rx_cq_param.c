
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct TYPE_2__ {int cq_period_mode; } ;
struct mlx5e_params {int rq_wq_type; int log_rq_mtu_frames; TYPE_1__ rx_cq_moderation; } ;
struct mlx5e_cq_param {int cq_period_mode; void* cqc; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5E_GET_PFLAG (struct mlx5e_params*,int ) ;
 int MLX5E_PFLAG_RX_CQE_COMPRESS ;
 int MLX5_CQE_FORMAT_CSUM ;
 int MLX5_SET (void*,void*,int,int) ;

 int cqe_comp_en ;
 int mini_cqe_res_format ;
 int mlx5e_build_common_cq_param (struct mlx5e_priv*,struct mlx5e_cq_param*) ;
 int mlx5e_mpwqe_get_log_num_strides (struct mlx5_core_dev*,struct mlx5e_params*,struct mlx5e_xsk_param*) ;
 int mlx5e_mpwqe_get_log_rq_size (struct mlx5e_params*,struct mlx5e_xsk_param*) ;

void mlx5e_build_rx_cq_param(struct mlx5e_priv *priv,
        struct mlx5e_params *params,
        struct mlx5e_xsk_param *xsk,
        struct mlx5e_cq_param *param)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 void *cqc = param->cqc;
 u8 log_cq_size;

 switch (params->rq_wq_type) {
 case 128:
  log_cq_size = mlx5e_mpwqe_get_log_rq_size(params, xsk) +
   mlx5e_mpwqe_get_log_num_strides(mdev, params, xsk);
  break;
 default:
  log_cq_size = params->log_rq_mtu_frames;
 }

 MLX5_SET(cqc, cqc, log_cq_size, log_cq_size);
 if (MLX5E_GET_PFLAG(params, MLX5E_PFLAG_RX_CQE_COMPRESS)) {
  MLX5_SET(cqc, cqc, mini_cqe_res_format, MLX5_CQE_FORMAT_CSUM);
  MLX5_SET(cqc, cqc, cqe_comp_en, 1);
 }

 mlx5e_build_common_cq_param(priv, param);
 param->cq_period_mode = params->rx_cq_moderation.cq_period_mode;
}
