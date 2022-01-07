
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_params {int lro_en; int tunneled_offload_en; scalar_t__ hard_mtu; int log_rq_mtu_frames; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE ;
 int MLX5E_PFLAG_RX_STRIDING_RQ ;
 int MLX5E_SET_PFLAG (struct mlx5e_params*,int ,int) ;
 int MLX5I_PARAMS_DEFAULT_LOG_RQ_SIZE ;
 scalar_t__ MLX5_IB_GRH_BYTES ;
 scalar_t__ MLX5_IPOIB_HARD_LEN ;
 scalar_t__ is_kdump_kernel () ;
 int mlx5e_init_rq_type_params (struct mlx5_core_dev*,struct mlx5e_params*) ;
 int mlx5e_set_rq_type (struct mlx5_core_dev*,struct mlx5e_params*) ;

__attribute__((used)) static void mlx5i_build_nic_params(struct mlx5_core_dev *mdev,
       struct mlx5e_params *params)
{

 MLX5E_SET_PFLAG(params, MLX5E_PFLAG_RX_STRIDING_RQ, 0);
 mlx5e_set_rq_type(mdev, params);
 mlx5e_init_rq_type_params(mdev, params);


 params->log_rq_mtu_frames = is_kdump_kernel() ?
  MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE :
  MLX5I_PARAMS_DEFAULT_LOG_RQ_SIZE;

 params->lro_en = 0;
 params->hard_mtu = MLX5_IB_GRH_BYTES + MLX5_IPOIB_HARD_LEN;
 params->tunneled_offload_en = 0;
}
