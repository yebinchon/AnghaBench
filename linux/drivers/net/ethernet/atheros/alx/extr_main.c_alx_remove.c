
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct alx_hw {int hw_addr; int perm_addr; } ;
struct alx_priv {int dev; int reset_wk; int link_check_wk; struct alx_hw hw; } ;


 int alx_set_macaddr (struct alx_hw*,int ) ;
 int cancel_work_sync (int *) ;
 int free_netdev (int ) ;
 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct alx_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void alx_remove(struct pci_dev *pdev)
{
 struct alx_priv *alx = pci_get_drvdata(pdev);
 struct alx_hw *hw = &alx->hw;

 cancel_work_sync(&alx->link_check_wk);
 cancel_work_sync(&alx->reset_wk);


 alx_set_macaddr(hw, hw->perm_addr);

 unregister_netdev(alx->dev);
 iounmap(hw->hw_addr);
 pci_release_mem_regions(pdev);

 pci_disable_pcie_error_reporting(pdev);
 pci_disable_device(pdev);

 free_netdev(alx->dev);
}
