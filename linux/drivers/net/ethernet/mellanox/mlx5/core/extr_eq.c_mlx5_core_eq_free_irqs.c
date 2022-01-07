
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_eq_table {int lock; } ;
struct TYPE_2__ {struct mlx5_eq_table* eq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int mlx5_irq_table_destroy (struct mlx5_core_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx5_core_eq_free_irqs(struct mlx5_core_dev *dev)
{
 struct mlx5_eq_table *table = dev->priv.eq_table;

 mutex_lock(&table->lock);
 mlx5_irq_table_destroy(dev);
 mutex_unlock(&table->lock);
}
