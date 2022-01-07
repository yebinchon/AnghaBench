
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_params {scalar_t__ rq_wq_type; int log_rq_mtu_frames; } ;
struct mlx5_core_dev {int dummy; } ;


 int BIT (int ) ;
 int MLX5E_GET_PFLAG (struct mlx5e_params*,int ) ;
 int MLX5E_PARAMS_DEFAULT_LOG_RQ_SIZE ;
 int MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE ;
 int MLX5E_PFLAG_RX_CQE_COMPRESS ;
 scalar_t__ MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ ;
 scalar_t__ is_kdump_kernel () ;
 int mlx5_core_info (struct mlx5_core_dev*,char*,int,int ,int ,int ) ;
 int mlx5e_mpwqe_get_log_rq_size (struct mlx5e_params*,int *) ;
 int mlx5e_mpwqe_get_log_stride_size (struct mlx5_core_dev*,struct mlx5e_params*,int *) ;

void mlx5e_init_rq_type_params(struct mlx5_core_dev *mdev,
          struct mlx5e_params *params)
{
 params->log_rq_mtu_frames = is_kdump_kernel() ?
  MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE :
  MLX5E_PARAMS_DEFAULT_LOG_RQ_SIZE;

 mlx5_core_info(mdev, "MLX5E: StrdRq(%d) RqSz(%ld) StrdSz(%ld) RxCqeCmprss(%d)\n",
         params->rq_wq_type == MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ,
         params->rq_wq_type == MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ ?
         BIT(mlx5e_mpwqe_get_log_rq_size(params, ((void*)0))) :
         BIT(params->log_rq_mtu_frames),
         BIT(mlx5e_mpwqe_get_log_stride_size(mdev, params, ((void*)0))),
         MLX5E_GET_PFLAG(params, MLX5E_PFLAG_RX_CQE_COMPRESS));
}
