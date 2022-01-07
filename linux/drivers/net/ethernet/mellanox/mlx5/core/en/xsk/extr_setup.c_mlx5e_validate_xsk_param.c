
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_xsk_param {scalar_t__ chunk_size; } ;
struct mlx5e_params {int rq_wq_type; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5E_MIN_XSK_CHUNK_SIZE ;

 scalar_t__ PAGE_SIZE ;
 scalar_t__ mlx5e_rx_get_min_frag_sz (struct mlx5e_params*,struct mlx5e_xsk_param*) ;
 int mlx5e_rx_is_linear_skb (struct mlx5e_params*,struct mlx5e_xsk_param*) ;
 int mlx5e_rx_mpwqe_is_linear_skb (struct mlx5_core_dev*,struct mlx5e_params*,struct mlx5e_xsk_param*) ;

bool mlx5e_validate_xsk_param(struct mlx5e_params *params,
         struct mlx5e_xsk_param *xsk,
         struct mlx5_core_dev *mdev)
{

 if (xsk->chunk_size > PAGE_SIZE ||
   xsk->chunk_size < MLX5E_MIN_XSK_CHUNK_SIZE)
  return 0;


 if (mlx5e_rx_get_min_frag_sz(params, xsk) > xsk->chunk_size)
  return 0;




 switch (params->rq_wq_type) {
 case 128:
  return mlx5e_rx_mpwqe_is_linear_skb(mdev, params, xsk);
 default:
  return mlx5e_rx_is_linear_skb(params, xsk);
 }
}
