
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dbg_root; int cq_debugfs; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int debugfs_create_dir (char*,int ) ;

void mlx5_cq_debugfs_init(struct mlx5_core_dev *dev)
{
 dev->priv.cq_debugfs = debugfs_create_dir("CQs", dev->priv.dbg_root);
}
