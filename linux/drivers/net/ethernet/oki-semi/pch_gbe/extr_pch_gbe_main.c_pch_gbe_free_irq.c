
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_adapter {int pdev; int irq; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int free_irq (int ,struct net_device*) ;
 int pci_free_irq_vectors (int ) ;

__attribute__((used)) static void pch_gbe_free_irq(struct pch_gbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 free_irq(adapter->irq, netdev);
 pci_free_irq_vectors(adapter->pdev);
}
