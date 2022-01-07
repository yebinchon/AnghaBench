
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_irq_table {int nvec; int irq; } ;
struct TYPE_3__ {struct mlx5_irq_table* irq_table; } ;
struct mlx5_core_dev {int pdev; TYPE_1__ priv; } ;
struct TYPE_4__ {int nh; } ;


 int clear_comp_irqs_affinity_hints (struct mlx5_core_dev*) ;
 int free_irq (int ,int *) ;
 int irq_clear_rmap (struct mlx5_core_dev*) ;
 int kfree (int ) ;
 TYPE_2__* mlx5_irq_get (struct mlx5_core_dev*,int) ;
 int pci_free_irq_vectors (int ) ;
 int pci_irq_vector (int ,int) ;

void mlx5_irq_table_destroy(struct mlx5_core_dev *dev)
{
 struct mlx5_irq_table *table = dev->priv.irq_table;
 int i;





 irq_clear_rmap(dev);
 clear_comp_irqs_affinity_hints(dev);
 for (i = 0; i < table->nvec; i++)
  free_irq(pci_irq_vector(dev->pdev, i),
    &mlx5_irq_get(dev, i)->nh);
 pci_free_irq_vectors(dev->pdev);
 kfree(table->irq);
}
