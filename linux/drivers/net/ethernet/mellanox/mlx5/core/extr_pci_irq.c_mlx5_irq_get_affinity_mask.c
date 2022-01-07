
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_irq_table {TYPE_1__* irq; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {struct cpumask* mask; } ;



struct cpumask *
mlx5_irq_get_affinity_mask(struct mlx5_irq_table *irq_table, int vecidx)
{
 return irq_table->irq[vecidx].mask;
}
