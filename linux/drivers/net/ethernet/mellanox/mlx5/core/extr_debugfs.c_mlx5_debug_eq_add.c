
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_eq {int * dbg; int eqn; } ;
struct TYPE_2__ {int eq_debugfs; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int ARRAY_SIZE (int ) ;
 int MLX5_DBG_RSC_EQ ;
 int add_res_tree (struct mlx5_core_dev*,int ,int ,int **,int ,int ,int ,struct mlx5_eq*) ;
 int eq_fields ;
 int mlx5_debugfs_root ;

int mlx5_debug_eq_add(struct mlx5_core_dev *dev, struct mlx5_eq *eq)
{
 int err;

 if (!mlx5_debugfs_root)
  return 0;

 err = add_res_tree(dev, MLX5_DBG_RSC_EQ, dev->priv.eq_debugfs,
      &eq->dbg, eq->eqn, eq_fields,
      ARRAY_SIZE(eq_fields), eq);
 if (err)
  eq->dbg = ((void*)0);

 return err;
}
