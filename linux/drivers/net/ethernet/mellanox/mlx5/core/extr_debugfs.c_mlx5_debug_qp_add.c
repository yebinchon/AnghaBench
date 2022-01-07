
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_qp {int * dbg; int qpn; } ;
struct TYPE_2__ {int qp_debugfs; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int ARRAY_SIZE (int ) ;
 int MLX5_DBG_RSC_QP ;
 int add_res_tree (struct mlx5_core_dev*,int ,int ,int **,int ,int ,int ,struct mlx5_core_qp*) ;
 int mlx5_debugfs_root ;
 int qp_fields ;

int mlx5_debug_qp_add(struct mlx5_core_dev *dev, struct mlx5_core_qp *qp)
{
 int err;

 if (!mlx5_debugfs_root)
  return 0;

 err = add_res_tree(dev, MLX5_DBG_RSC_QP, dev->priv.qp_debugfs,
      &qp->dbg, qp->qpn, qp_fields,
      ARRAY_SIZE(qp_fields), qp);
 if (err)
  qp->dbg = ((void*)0);

 return err;
}
