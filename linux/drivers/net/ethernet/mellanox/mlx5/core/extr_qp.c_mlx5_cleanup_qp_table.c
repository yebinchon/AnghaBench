
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_qp_table {int nb; } ;
struct TYPE_2__ {struct mlx5_qp_table qp_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int mlx5_notifier_unregister (struct mlx5_core_dev*,int *) ;
 int mlx5_qp_debugfs_cleanup (struct mlx5_core_dev*) ;

void mlx5_cleanup_qp_table(struct mlx5_core_dev *dev)
{
 struct mlx5_qp_table *table = &dev->priv.qp_table;

 mlx5_notifier_unregister(dev, &table->nb);
 mlx5_qp_debugfs_cleanup(dev);
}
