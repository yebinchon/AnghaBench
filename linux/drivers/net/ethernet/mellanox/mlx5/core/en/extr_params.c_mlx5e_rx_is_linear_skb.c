
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {int lro_en; } ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ max (int ,int ) ;
 int mlx5e_rx_get_linear_frag_sz (struct mlx5e_params*,struct mlx5e_xsk_param*) ;

bool mlx5e_rx_is_linear_skb(struct mlx5e_params *params,
       struct mlx5e_xsk_param *xsk)
{



 u32 linear_frag_sz = max(mlx5e_rx_get_linear_frag_sz(params, xsk),
     mlx5e_rx_get_linear_frag_sz(params, ((void*)0)));

 return !params->lro_en && linear_frag_sz <= PAGE_SIZE;
}
