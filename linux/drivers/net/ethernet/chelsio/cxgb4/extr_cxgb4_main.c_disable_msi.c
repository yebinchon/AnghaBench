
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int flags; int pdev; } ;


 int CXGB4_USING_MSI ;
 int CXGB4_USING_MSIX ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void disable_msi(struct adapter *adapter)
{
 if (adapter->flags & CXGB4_USING_MSIX) {
  pci_disable_msix(adapter->pdev);
  adapter->flags &= ~CXGB4_USING_MSIX;
 } else if (adapter->flags & CXGB4_USING_MSI) {
  pci_disable_msi(adapter->pdev);
  adapter->flags &= ~CXGB4_USING_MSI;
 }
}
