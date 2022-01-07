
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dbg_root; int qp_debugfs; } ;
struct mlx5_core_dev {TYPE_1__ priv; int num_qps; } ;


 int atomic_set (int *,int ) ;
 int debugfs_create_dir (char*,int ) ;

void mlx5_qp_debugfs_init(struct mlx5_core_dev *dev)
{
 atomic_set(&dev->num_qps, 0);

 dev->priv.qp_debugfs = debugfs_create_dir("QPs", dev->priv.dbg_root);
}
