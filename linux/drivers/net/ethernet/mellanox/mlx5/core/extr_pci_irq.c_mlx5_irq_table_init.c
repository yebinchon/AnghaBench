
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_irq_table {int dummy; } ;
struct TYPE_2__ {struct mlx5_irq_table* irq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mlx5_irq_table* kvzalloc (int,int ) ;

int mlx5_irq_table_init(struct mlx5_core_dev *dev)
{
 struct mlx5_irq_table *irq_table;

 irq_table = kvzalloc(sizeof(*irq_table), GFP_KERNEL);
 if (!irq_table)
  return -ENOMEM;

 dev->priv.irq_table = irq_table;
 return 0;
}
