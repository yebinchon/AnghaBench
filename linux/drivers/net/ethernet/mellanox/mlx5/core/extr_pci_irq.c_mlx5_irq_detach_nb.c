
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct mlx5_irq_table {struct mlx5_irq* irq; } ;
struct mlx5_irq {int nh; } ;


 int atomic_notifier_chain_unregister (int *,struct notifier_block*) ;

int mlx5_irq_detach_nb(struct mlx5_irq_table *irq_table, int vecidx,
         struct notifier_block *nb)
{
 struct mlx5_irq *irq;

 irq = &irq_table->irq[vecidx];
 return atomic_notifier_chain_unregister(&irq->nh, nb);
}
