
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {scalar_t__ log_rq_mtu_frames; } ;


 scalar_t__ MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE_MPW ;
 scalar_t__ mlx5e_mpwqe_log_pkts_per_wqe (struct mlx5e_params*,struct mlx5e_xsk_param*) ;

u8 mlx5e_mpwqe_get_log_rq_size(struct mlx5e_params *params,
          struct mlx5e_xsk_param *xsk)
{
 u8 log_pkts_per_wqe = mlx5e_mpwqe_log_pkts_per_wqe(params, xsk);


 if (params->log_rq_mtu_frames <
     log_pkts_per_wqe + MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE_MPW)
  return MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE_MPW;

 return params->log_rq_mtu_frames - log_pkts_per_wqe;
}
