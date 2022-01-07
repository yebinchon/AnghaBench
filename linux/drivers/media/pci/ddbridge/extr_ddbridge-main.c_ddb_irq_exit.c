
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb {int msi; int pdev; } ;


 int ddb_irq_disable (struct ddb*) ;
 int free_irq (int ,struct ddb*) ;
 int pci_irq_vector (int ,int) ;

__attribute__((used)) static void ddb_irq_exit(struct ddb *dev)
{
 ddb_irq_disable(dev);
 if (dev->msi == 2)
  free_irq(pci_irq_vector(dev->pdev, 1), dev);
 free_irq(pci_irq_vector(dev->pdev, 0), dev);
}
