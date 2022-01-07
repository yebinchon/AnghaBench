
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
typedef scalar_t__ s8 ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_MAX_MPWQE_LOG_WQE_STRIDE_SZ ;
 scalar_t__ MLX5_MPWQE_LOG_NUM_STRIDES_BASE ;
 scalar_t__ MLX5_MPWRQ_LOG_WQE_SZ ;
 int ext_stride_num_range ;
 int mlx5e_rx_get_linear_frag_sz (struct mlx5e_params*,struct mlx5e_xsk_param*) ;
 int mlx5e_rx_is_linear_skb (struct mlx5e_params*,struct mlx5e_xsk_param*) ;
 scalar_t__ order_base_2 (int ) ;

bool mlx5e_rx_mpwqe_is_linear_skb(struct mlx5_core_dev *mdev,
      struct mlx5e_params *params,
      struct mlx5e_xsk_param *xsk)
{
 u32 linear_frag_sz = mlx5e_rx_get_linear_frag_sz(params, xsk);
 s8 signed_log_num_strides_param;
 u8 log_num_strides;

 if (!mlx5e_rx_is_linear_skb(params, xsk))
  return 0;

 if (order_base_2(linear_frag_sz) > MLX5_MAX_MPWQE_LOG_WQE_STRIDE_SZ)
  return 0;

 if (MLX5_CAP_GEN(mdev, ext_stride_num_range))
  return 1;

 log_num_strides = MLX5_MPWRQ_LOG_WQE_SZ - order_base_2(linear_frag_sz);
 signed_log_num_strides_param =
  (s8)log_num_strides - MLX5_MPWQE_LOG_NUM_STRIDES_BASE;

 return signed_log_num_strides_param >= 0;
}
