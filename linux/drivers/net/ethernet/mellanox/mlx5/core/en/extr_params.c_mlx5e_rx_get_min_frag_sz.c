
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {int sw_mtu; } ;


 scalar_t__ MLX5E_SW2HW_MTU (struct mlx5e_params*,int ) ;
 scalar_t__ mlx5e_get_linear_rq_headroom (struct mlx5e_params*,struct mlx5e_xsk_param*) ;

u32 mlx5e_rx_get_min_frag_sz(struct mlx5e_params *params,
        struct mlx5e_xsk_param *xsk)
{
 u32 hw_mtu = MLX5E_SW2HW_MTU(params, params->sw_mtu);
 u16 linear_rq_headroom = mlx5e_get_linear_rq_headroom(params, xsk);

 return linear_rq_headroom + hw_mtu;
}
