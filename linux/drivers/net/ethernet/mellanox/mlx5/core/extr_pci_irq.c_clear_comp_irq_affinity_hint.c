
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_irq {int mask; } ;
struct mlx5_core_dev {int pdev; } ;


 int MLX5_IRQ_VEC_COMP_BASE ;
 int free_cpumask_var (int ) ;
 int irq_set_affinity_hint (int,int *) ;
 struct mlx5_irq* mlx5_irq_get (struct mlx5_core_dev*,int) ;
 int pci_irq_vector (int ,int) ;

__attribute__((used)) static void clear_comp_irq_affinity_hint(struct mlx5_core_dev *mdev, int i)
{
 int vecidx = MLX5_IRQ_VEC_COMP_BASE + i;
 struct mlx5_irq *irq;
 int irqn;

 irq = mlx5_irq_get(mdev, vecidx);
 irqn = pci_irq_vector(mdev->pdev, vecidx);
 irq_set_affinity_hint(irqn, ((void*)0));
 free_cpumask_var(irq->mask);
}
