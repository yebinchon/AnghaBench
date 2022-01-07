
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {scalar_t__ xdp_prog; } ;



__attribute__((used)) static inline bool mlx5e_rx_is_xdp(struct mlx5e_params *params,
       struct mlx5e_xsk_param *xsk)
{
 return params->xdp_prog || xsk;
}
