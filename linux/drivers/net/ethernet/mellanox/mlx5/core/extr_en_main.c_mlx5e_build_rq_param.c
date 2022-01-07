
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5e_xsk_param {int dummy; } ;
struct TYPE_5__ {int buf_numa_node; } ;
struct TYPE_6__ {int num_frags; } ;
struct mlx5e_rq_param {TYPE_2__ wq; TYPE_3__ frags_info; void* rqc; } ;
struct mlx5e_priv {int q_counter; struct mlx5_core_dev* mdev; } ;
struct mlx5e_params {int rq_wq_type; int log_rq_mtu_frames; int vlan_strip_disable; int scatter_fcs_en; } ;
struct TYPE_4__ {int pdn; } ;
struct mlx5_core_dev {int device; TYPE_1__ mlx5e_res; } ;


 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_MPWQE_LOG_NUM_STRIDES_BASE ;
 int MLX5_MPWQE_LOG_STRIDE_SZ_BASE ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_WQ_END_PAD_MODE_ALIGN ;

 int counter_set_id ;
 int dev_to_node (int ) ;
 int end_padding_mode ;
 int log_wq_stride ;
 int log_wq_sz ;
 int log_wqe_num_of_strides ;
 int log_wqe_stride_size ;
 int mlx5e_build_rq_frags_info (struct mlx5_core_dev*,struct mlx5e_params*,struct mlx5e_xsk_param*,TYPE_3__*) ;
 int mlx5e_get_rqwq_log_stride (int,int) ;
 int mlx5e_mpwqe_get_log_num_strides (struct mlx5_core_dev*,struct mlx5e_params*,struct mlx5e_xsk_param*) ;
 int mlx5e_mpwqe_get_log_rq_size (struct mlx5e_params*,struct mlx5e_xsk_param*) ;
 int mlx5e_mpwqe_get_log_stride_size (struct mlx5_core_dev*,struct mlx5e_params*,struct mlx5e_xsk_param*) ;
 int pd ;
 int scatter_fcs ;
 int vsd ;
 void* wq ;
 int wq_type ;

void mlx5e_build_rq_param(struct mlx5e_priv *priv,
     struct mlx5e_params *params,
     struct mlx5e_xsk_param *xsk,
     struct mlx5e_rq_param *param)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 void *rqc = param->rqc;
 void *wq = MLX5_ADDR_OF(rqc, rqc, wq);
 int ndsegs = 1;

 switch (params->rq_wq_type) {
 case 128:
  MLX5_SET(wq, wq, log_wqe_num_of_strides,
    mlx5e_mpwqe_get_log_num_strides(mdev, params, xsk) -
    MLX5_MPWQE_LOG_NUM_STRIDES_BASE);
  MLX5_SET(wq, wq, log_wqe_stride_size,
    mlx5e_mpwqe_get_log_stride_size(mdev, params, xsk) -
    MLX5_MPWQE_LOG_STRIDE_SZ_BASE);
  MLX5_SET(wq, wq, log_wq_sz, mlx5e_mpwqe_get_log_rq_size(params, xsk));
  break;
 default:
  MLX5_SET(wq, wq, log_wq_sz, params->log_rq_mtu_frames);
  mlx5e_build_rq_frags_info(mdev, params, xsk, &param->frags_info);
  ndsegs = param->frags_info.num_frags;
 }

 MLX5_SET(wq, wq, wq_type, params->rq_wq_type);
 MLX5_SET(wq, wq, end_padding_mode, MLX5_WQ_END_PAD_MODE_ALIGN);
 MLX5_SET(wq, wq, log_wq_stride,
   mlx5e_get_rqwq_log_stride(params->rq_wq_type, ndsegs));
 MLX5_SET(wq, wq, pd, mdev->mlx5e_res.pdn);
 MLX5_SET(rqc, rqc, counter_set_id, priv->q_counter);
 MLX5_SET(rqc, rqc, vsd, params->vlan_strip_disable);
 MLX5_SET(rqc, rqc, scatter_fcs, params->scatter_fcs_en);

 param->wq.buf_numa_node = dev_to_node(mdev->device);
}
