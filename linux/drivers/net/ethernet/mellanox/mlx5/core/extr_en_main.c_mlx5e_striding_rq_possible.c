
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_params {scalar_t__ xdp_prog; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_IPSEC_DEV (struct mlx5_core_dev*) ;
 int mlx5e_check_fragmented_striding_rq_cap (struct mlx5_core_dev*) ;
 int mlx5e_rx_mpwqe_is_linear_skb (struct mlx5_core_dev*,struct mlx5e_params*,int *) ;

bool mlx5e_striding_rq_possible(struct mlx5_core_dev *mdev,
    struct mlx5e_params *params)
{
 if (!mlx5e_check_fragmented_striding_rq_cap(mdev))
  return 0;

 if (MLX5_IPSEC_DEV(mdev))
  return 0;

 if (params->xdp_prog) {




  if (!mlx5e_rx_mpwqe_is_linear_skb(mdev, params, ((void*)0)))
   return 0;
 }

 return 1;
}
