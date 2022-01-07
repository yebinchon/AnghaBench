
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int notifier_call; } ;
struct mlx5_qp_table {TYPE_2__ nb; int tree; int lock; } ;
struct TYPE_3__ {struct mlx5_qp_table qp_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int GFP_ATOMIC ;
 int INIT_RADIX_TREE (int *,int ) ;
 int memset (struct mlx5_qp_table*,int ,int) ;
 int mlx5_notifier_register (struct mlx5_core_dev*,TYPE_2__*) ;
 int mlx5_qp_debugfs_init (struct mlx5_core_dev*) ;
 int rsc_event_notifier ;
 int spin_lock_init (int *) ;

void mlx5_init_qp_table(struct mlx5_core_dev *dev)
{
 struct mlx5_qp_table *table = &dev->priv.qp_table;

 memset(table, 0, sizeof(*table));
 spin_lock_init(&table->lock);
 INIT_RADIX_TREE(&table->tree, GFP_ATOMIC);
 mlx5_qp_debugfs_init(dev);

 table->nb.notifier_call = rsc_event_notifier;
 mlx5_notifier_register(dev, &table->nb);
}
