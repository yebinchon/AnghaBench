
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_qp {scalar_t__ dbg; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_debugfs_root ;
 int rem_res_tree (scalar_t__) ;

void mlx5_debug_qp_remove(struct mlx5_core_dev *dev, struct mlx5_core_qp *qp)
{
 if (!mlx5_debugfs_root)
  return;

 if (qp->dbg)
  rem_res_tree(qp->dbg);
}
