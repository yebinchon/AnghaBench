
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_irq_table {struct mlx5_irq* irq; } ;
struct mlx5_irq {int dummy; } ;
struct TYPE_2__ {struct mlx5_irq_table* irq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;



__attribute__((used)) static struct mlx5_irq *mlx5_irq_get(struct mlx5_core_dev *dev, int vecidx)
{
 struct mlx5_irq_table *irq_table = dev->priv.irq_table;

 return &irq_table->irq[vecidx];
}
