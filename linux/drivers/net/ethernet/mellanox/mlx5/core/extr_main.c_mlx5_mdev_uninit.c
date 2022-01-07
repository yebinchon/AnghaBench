
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dbg_root; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int debugfs_remove_recursive (int ) ;
 int mlx5_health_cleanup (struct mlx5_core_dev*) ;
 int mlx5_pagealloc_cleanup (struct mlx5_core_dev*) ;

__attribute__((used)) static void mlx5_mdev_uninit(struct mlx5_core_dev *dev)
{
 mlx5_pagealloc_cleanup(dev);
 mlx5_health_cleanup(dev);
 debugfs_remove_recursive(dev->priv.dbg_root);
}
