
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {int dummy; } ;


 scalar_t__ MLX5_MPWRQ_LOG_WQE_SZ ;
 int mlx5e_rx_get_linear_frag_sz (struct mlx5e_params*,struct mlx5e_xsk_param*) ;
 scalar_t__ order_base_2 (int ) ;

u8 mlx5e_mpwqe_log_pkts_per_wqe(struct mlx5e_params *params,
    struct mlx5e_xsk_param *xsk)
{
 u32 linear_frag_sz = mlx5e_rx_get_linear_frag_sz(params, xsk);

 return MLX5_MPWRQ_LOG_WQE_SZ - order_base_2(linear_frag_sz);
}
