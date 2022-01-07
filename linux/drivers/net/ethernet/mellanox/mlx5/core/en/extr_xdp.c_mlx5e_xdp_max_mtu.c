
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {int dummy; } ;


 int MLX5E_HW2SW_MTU (struct mlx5e_params*,int ) ;
 int SKB_MAX_HEAD (int) ;
 int mlx5e_get_linear_rq_headroom (struct mlx5e_params*,struct mlx5e_xsk_param*) ;

int mlx5e_xdp_max_mtu(struct mlx5e_params *params, struct mlx5e_xsk_param *xsk)
{
 int hr = mlx5e_get_linear_rq_headroom(params, xsk);
 return MLX5E_HW2SW_MTU(params, SKB_MAX_HEAD(hr));
}
