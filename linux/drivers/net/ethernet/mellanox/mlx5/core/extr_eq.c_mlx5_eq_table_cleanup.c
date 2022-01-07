
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int kvfree (int ) ;
 int mlx5_eq_debugfs_cleanup (struct mlx5_core_dev*) ;

void mlx5_eq_table_cleanup(struct mlx5_core_dev *dev)
{
 mlx5_eq_debugfs_cleanup(dev);
 kvfree(dev->priv.eq_table);
}
