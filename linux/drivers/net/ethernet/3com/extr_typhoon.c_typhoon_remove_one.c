
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typhoon_shared {int dummy; } ;
struct typhoon {int shared_dma; int shared; int ioaddr; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int NoWait ;
 int PCI_D0 ;
 int free_netdev (struct net_device*) ;
 struct typhoon* netdev_priv (struct net_device*) ;
 int pci_clear_mwi (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int typhoon_reset (int ,int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void
typhoon_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct typhoon *tp = netdev_priv(dev);

 unregister_netdev(dev);
 pci_set_power_state(pdev, PCI_D0);
 pci_restore_state(pdev);
 typhoon_reset(tp->ioaddr, NoWait);
 pci_iounmap(pdev, tp->ioaddr);
 pci_free_consistent(pdev, sizeof(struct typhoon_shared),
       tp->shared, tp->shared_dma);
 pci_release_regions(pdev);
 pci_clear_mwi(pdev);
 pci_disable_device(pdev);
 free_netdev(dev);
}
