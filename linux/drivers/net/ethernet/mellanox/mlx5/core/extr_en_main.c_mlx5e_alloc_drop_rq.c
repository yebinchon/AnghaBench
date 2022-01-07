
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int buf_numa_node; int db_numa_node; } ;
struct mlx5e_rq_param {TYPE_2__ wq; void* rqc; } ;
struct TYPE_3__ {int wq; } ;
struct mlx5e_rq {struct mlx5_core_dev* mdev; int xdp_rxq; int wq_ctrl; TYPE_1__ wqe; } ;
struct mlx5_core_dev {int dummy; } ;


 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int mlx5_wq_cyc_create (struct mlx5_core_dev*,TYPE_2__*,void*,int *,int *) ;
 int wq ;
 int xdp_rxq_info_unused (int *) ;

__attribute__((used)) static int mlx5e_alloc_drop_rq(struct mlx5_core_dev *mdev,
          struct mlx5e_rq *rq,
          struct mlx5e_rq_param *param)
{
 void *rqc = param->rqc;
 void *rqc_wq = MLX5_ADDR_OF(rqc, rqc, wq);
 int err;

 param->wq.db_numa_node = param->wq.buf_numa_node;

 err = mlx5_wq_cyc_create(mdev, &param->wq, rqc_wq, &rq->wqe.wq,
     &rq->wq_ctrl);
 if (err)
  return err;


 xdp_rxq_info_unused(&rq->xdp_rxq);

 rq->mdev = mdev;

 return 0;
}
