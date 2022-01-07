
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int buf_numa_node; } ;
struct mlx5e_sq_param {TYPE_2__ wq; void* sqc; } ;
struct mlx5e_priv {TYPE_3__* mdev; } ;
struct TYPE_4__ {int pdn; } ;
struct TYPE_6__ {int device; TYPE_1__ mlx5e_res; } ;


 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_SEND_WQE_BB ;
 int MLX5_SET (void*,void*,int ,int ) ;
 int dev_to_node (int ) ;
 int ilog2 (int ) ;
 int log_wq_stride ;
 int pd ;
 void* wq ;

void mlx5e_build_sq_param_common(struct mlx5e_priv *priv,
     struct mlx5e_sq_param *param)
{
 void *sqc = param->sqc;
 void *wq = MLX5_ADDR_OF(sqc, sqc, wq);

 MLX5_SET(wq, wq, log_wq_stride, ilog2(MLX5_SEND_WQE_BB));
 MLX5_SET(wq, wq, pd, priv->mdev->mlx5e_res.pdn);

 param->wq.buf_numa_node = dev_to_node(priv->mdev->device);
}
