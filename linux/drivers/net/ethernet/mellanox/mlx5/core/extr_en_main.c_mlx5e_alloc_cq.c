
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* db_numa_node; void* buf_numa_node; } ;
struct mlx5e_cq_param {int eq_ix; TYPE_2__ wq; } ;
struct mlx5e_cq {struct mlx5e_channel* channel; int * napi; } ;
struct mlx5e_channel {int napi; int ix; int cpu; TYPE_1__* priv; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_3__ {struct mlx5_core_dev* mdev; } ;


 void* cpu_to_node (int ) ;
 int mlx5e_alloc_cq_common (struct mlx5_core_dev*,struct mlx5e_cq_param*,struct mlx5e_cq*) ;

__attribute__((used)) static int mlx5e_alloc_cq(struct mlx5e_channel *c,
     struct mlx5e_cq_param *param,
     struct mlx5e_cq *cq)
{
 struct mlx5_core_dev *mdev = c->priv->mdev;
 int err;

 param->wq.buf_numa_node = cpu_to_node(c->cpu);
 param->wq.db_numa_node = cpu_to_node(c->cpu);
 param->eq_ix = c->ix;

 err = mlx5e_alloc_cq_common(mdev, param, cq);

 cq->napi = &c->napi;
 cq->channel = c;

 return err;
}
