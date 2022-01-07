
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct cp_private {scalar_t__ wol_enabled; int regs; } ;


 int PCI_D0 ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int pci_clear_mwi (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void cp_remove_one (struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct cp_private *cp = netdev_priv(dev);

 unregister_netdev(dev);
 iounmap(cp->regs);
 if (cp->wol_enabled)
  pci_set_power_state (pdev, PCI_D0);
 pci_release_regions(pdev);
 pci_clear_mwi(pdev);
 pci_disable_device(pdev);
 free_netdev(dev);
}
