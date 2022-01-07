
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int pdev; int flags; } ;


 int ENA_FLAG_MSIX_ENABLED ;
 int pci_free_irq_vectors (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void ena_disable_msix(struct ena_adapter *adapter)
{
 if (test_and_clear_bit(ENA_FLAG_MSIX_ENABLED, &adapter->flags))
  pci_free_irq_vectors(adapter->pdev);
}
