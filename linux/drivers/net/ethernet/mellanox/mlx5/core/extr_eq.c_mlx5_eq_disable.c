
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct mlx5_eq_table {int irq_table; } ;
struct mlx5_eq {int vecidx; } ;
struct TYPE_2__ {struct mlx5_eq_table* eq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int mlx5_irq_detach_nb (int ,int ,struct notifier_block*) ;

void mlx5_eq_disable(struct mlx5_core_dev *dev, struct mlx5_eq *eq,
       struct notifier_block *nb)
{
 struct mlx5_eq_table *eq_table = dev->priv.eq_table;

 mlx5_irq_detach_nb(eq_table->irq_table, eq->vecidx, nb);
}
