
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


 int eq_update_ci (struct mlx5_eq*,int) ;
 int mlx5_irq_attach_nb (int ,int ,struct notifier_block*) ;

int mlx5_eq_enable(struct mlx5_core_dev *dev, struct mlx5_eq *eq,
     struct notifier_block *nb)
{
 struct mlx5_eq_table *eq_table = dev->priv.eq_table;
 int err;

 err = mlx5_irq_attach_nb(eq_table->irq_table, eq->vecidx, nb);
 if (!err)
  eq_update_ci(eq, 1);

 return err;
}
