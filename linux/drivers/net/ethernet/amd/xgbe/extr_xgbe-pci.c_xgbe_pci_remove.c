
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int pcidev; } ;
struct pci_dev {int dummy; } ;


 int pci_free_irq_vectors (int ) ;
 struct xgbe_prv_data* pci_get_drvdata (struct pci_dev*) ;
 int xgbe_deconfig_netdev (struct xgbe_prv_data*) ;
 int xgbe_free_pdata (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_pci_remove(struct pci_dev *pdev)
{
 struct xgbe_prv_data *pdata = pci_get_drvdata(pdev);

 xgbe_deconfig_netdev(pdata);

 pci_free_irq_vectors(pdata->pcidev);

 xgbe_free_pdata(pdata);
}
