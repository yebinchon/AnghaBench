
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_MPWRQ_LOG_WQE_SZ ;
 scalar_t__ mlx5e_mpwqe_get_log_stride_size (struct mlx5_core_dev*,struct mlx5e_params*,struct mlx5e_xsk_param*) ;

u8 mlx5e_mpwqe_get_log_num_strides(struct mlx5_core_dev *mdev,
       struct mlx5e_params *params,
       struct mlx5e_xsk_param *xsk)
{
 return MLX5_MPWRQ_LOG_WQE_SZ -
  mlx5e_mpwqe_get_log_stride_size(mdev, params, xsk);
}
