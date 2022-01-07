
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {scalar_t__ rq_wq_type; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_WQ_TYPE_CYCLIC ;
 int mlx5e_get_linear_rq_headroom (struct mlx5e_params*,struct mlx5e_xsk_param*) ;
 int mlx5e_rx_is_linear_skb (struct mlx5e_params*,struct mlx5e_xsk_param*) ;
 int mlx5e_rx_mpwqe_is_linear_skb (struct mlx5_core_dev*,struct mlx5e_params*,struct mlx5e_xsk_param*) ;

u16 mlx5e_get_rq_headroom(struct mlx5_core_dev *mdev,
     struct mlx5e_params *params,
     struct mlx5e_xsk_param *xsk)
{
 bool is_linear_skb = (params->rq_wq_type == MLX5_WQ_TYPE_CYCLIC) ?
  mlx5e_rx_is_linear_skb(params, xsk) :
  mlx5e_rx_mpwqe_is_linear_skb(mdev, params, xsk);

 return is_linear_skb ? mlx5e_get_linear_rq_headroom(params, xsk) : 0;
}
