
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmdif_debugfs; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int debugfs_remove_recursive (int ) ;

void mlx5_cmdif_debugfs_cleanup(struct mlx5_core_dev *dev)
{
 debugfs_remove_recursive(dev->priv.cmdif_debugfs);
}
