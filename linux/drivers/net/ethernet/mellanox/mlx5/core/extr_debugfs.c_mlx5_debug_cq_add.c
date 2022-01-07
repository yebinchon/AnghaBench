
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cq_debugfs; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct mlx5_core_cq {int * dbg; int cqn; } ;


 int ARRAY_SIZE (int ) ;
 int MLX5_DBG_RSC_CQ ;
 int add_res_tree (struct mlx5_core_dev*,int ,int ,int **,int ,int ,int ,struct mlx5_core_cq*) ;
 int cq_fields ;
 int mlx5_debugfs_root ;

int mlx5_debug_cq_add(struct mlx5_core_dev *dev, struct mlx5_core_cq *cq)
{
 int err;

 if (!mlx5_debugfs_root)
  return 0;

 err = add_res_tree(dev, MLX5_DBG_RSC_CQ, dev->priv.cq_debugfs,
      &cq->dbg, cq->cqn, cq_fields,
      ARRAY_SIZE(cq_fields), cq);
 if (err)
  cq->dbg = ((void*)0);

 return err;
}
