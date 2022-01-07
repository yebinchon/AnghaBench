
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_cmd_debug {int dbg_root; } ;
struct TYPE_2__ {struct mlx5_cmd_debug dbg; } ;
struct mlx5_core_dev {TYPE_1__ cmd; } ;


 int debugfs_remove_recursive (int ) ;
 int mlx5_cmdif_debugfs_cleanup (struct mlx5_core_dev*) ;
 int mlx5_debugfs_root ;

__attribute__((used)) static void clean_debug_files(struct mlx5_core_dev *dev)
{
 struct mlx5_cmd_debug *dbg = &dev->cmd.dbg;

 if (!mlx5_debugfs_root)
  return;

 mlx5_cmdif_debugfs_cleanup(dev);
 debugfs_remove_recursive(dbg->dbg_root);
}
