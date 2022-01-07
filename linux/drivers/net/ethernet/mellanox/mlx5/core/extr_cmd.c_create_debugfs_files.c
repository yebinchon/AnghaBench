
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dbg_root; } ;
struct mlx5_cmd_debug {int dbg_root; int status; } ;
struct TYPE_4__ {struct mlx5_cmd_debug dbg; } ;
struct mlx5_core_dev {TYPE_1__ priv; TYPE_2__ cmd; } ;


 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,struct mlx5_core_dev*,int *) ;
 int debugfs_create_u8 (char*,int,int ,int *) ;
 int dfops ;
 int fops ;
 int mlx5_cmdif_debugfs_init (struct mlx5_core_dev*) ;
 int olfops ;

__attribute__((used)) static void create_debugfs_files(struct mlx5_core_dev *dev)
{
 struct mlx5_cmd_debug *dbg = &dev->cmd.dbg;

 dbg->dbg_root = debugfs_create_dir("cmd", dev->priv.dbg_root);

 debugfs_create_file("in", 0400, dbg->dbg_root, dev, &dfops);
 debugfs_create_file("out", 0200, dbg->dbg_root, dev, &dfops);
 debugfs_create_file("out_len", 0600, dbg->dbg_root, dev, &olfops);
 debugfs_create_u8("status", 0600, dbg->dbg_root, &dbg->status);
 debugfs_create_file("run", 0200, dbg->dbg_root, dev, &fops);

 mlx5_cmdif_debugfs_init(dev);
}
