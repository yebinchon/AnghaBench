
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_eq_table {int irq_table; int * nh; int lock; } ;
struct TYPE_2__ {int irq_table; struct mlx5_eq_table* eq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int ATOMIC_INIT_NOTIFIER_HEAD (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_EVENT_TYPE_MAX ;
 struct mlx5_eq_table* kvzalloc (int,int ) ;
 int mlx5_eq_debugfs_init (struct mlx5_core_dev*) ;
 int mutex_init (int *) ;

int mlx5_eq_table_init(struct mlx5_core_dev *dev)
{
 struct mlx5_eq_table *eq_table;
 int i;

 eq_table = kvzalloc(sizeof(*eq_table), GFP_KERNEL);
 if (!eq_table)
  return -ENOMEM;

 dev->priv.eq_table = eq_table;

 mlx5_eq_debugfs_init(dev);

 mutex_init(&eq_table->lock);
 for (i = 0; i < MLX5_EVENT_TYPE_MAX; i++)
  ATOMIC_INIT_NOTIFIER_HEAD(&eq_table->nh[i]);

 eq_table->irq_table = dev->priv.irq_table;
 return 0;
}
