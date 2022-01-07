
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
struct mlx5_core_cq {scalar_t__ dbg; } ;


 int mlx5_debugfs_root ;
 int rem_res_tree (scalar_t__) ;

void mlx5_debug_cq_remove(struct mlx5_core_dev *dev, struct mlx5_core_cq *cq)
{
 if (!mlx5_debugfs_root)
  return;

 if (cq->dbg)
  rem_res_tree(cq->dbg);
}
