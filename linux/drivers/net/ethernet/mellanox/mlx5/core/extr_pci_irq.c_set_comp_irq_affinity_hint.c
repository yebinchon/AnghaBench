
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_irq {int mask; } ;
struct TYPE_2__ {int numa_node; } ;
struct mlx5_core_dev {TYPE_1__ priv; int pdev; } ;


 int CONFIG_SMP ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 int MLX5_IRQ_VEC_COMP_BASE ;
 int cpumask_local_spread (int,int ) ;
 int cpumask_set_cpu (int ,int ) ;
 scalar_t__ irq_set_affinity_hint (int,int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,...) ;
 struct mlx5_irq* mlx5_irq_get (struct mlx5_core_dev*,int) ;
 int pci_irq_vector (int ,int) ;
 int zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static int set_comp_irq_affinity_hint(struct mlx5_core_dev *mdev, int i)
{
 int vecidx = MLX5_IRQ_VEC_COMP_BASE + i;
 struct mlx5_irq *irq;
 int irqn;

 irq = mlx5_irq_get(mdev, vecidx);
 irqn = pci_irq_vector(mdev->pdev, vecidx);
 if (!zalloc_cpumask_var(&irq->mask, GFP_KERNEL)) {
  mlx5_core_warn(mdev, "zalloc_cpumask_var failed");
  return -ENOMEM;
 }

 cpumask_set_cpu(cpumask_local_spread(i, mdev->priv.numa_node),
   irq->mask);
 if (IS_ENABLED(CONFIG_SMP) &&
     irq_set_affinity_hint(irqn, irq->mask))
  mlx5_core_warn(mdev, "irq_set_affinity_hint failed, irq 0x%.4x",
          irqn);

 return 0;
}
