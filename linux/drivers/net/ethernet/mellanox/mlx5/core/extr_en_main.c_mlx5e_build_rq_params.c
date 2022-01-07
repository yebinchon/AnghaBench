
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_params {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5E_PFLAG_RX_STRIDING_RQ ;
 int MLX5E_SET_PFLAG (struct mlx5e_params*,int ,int) ;
 int mlx5e_init_rq_type_params (struct mlx5_core_dev*,struct mlx5e_params*) ;
 int mlx5e_rx_is_linear_skb (struct mlx5e_params*,int *) ;
 scalar_t__ mlx5e_rx_mpwqe_is_linear_skb (struct mlx5_core_dev*,struct mlx5e_params*,int *) ;
 int mlx5e_set_rq_type (struct mlx5_core_dev*,struct mlx5e_params*) ;
 scalar_t__ mlx5e_striding_rq_possible (struct mlx5_core_dev*,struct mlx5e_params*) ;
 int slow_pci_heuristic (struct mlx5_core_dev*) ;

void mlx5e_build_rq_params(struct mlx5_core_dev *mdev,
      struct mlx5e_params *params)
{







 if (!slow_pci_heuristic(mdev) &&
     mlx5e_striding_rq_possible(mdev, params) &&
     (mlx5e_rx_mpwqe_is_linear_skb(mdev, params, ((void*)0)) ||
      !mlx5e_rx_is_linear_skb(params, ((void*)0))))
  MLX5E_SET_PFLAG(params, MLX5E_PFLAG_RX_STRIDING_RQ, 1);
 mlx5e_set_rq_type(mdev, params);
 mlx5e_init_rq_type_params(mdev, params);
}
