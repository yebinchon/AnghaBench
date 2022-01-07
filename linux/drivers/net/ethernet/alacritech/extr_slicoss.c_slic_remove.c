
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_device {int regs; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct slic_device* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void slic_remove(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct slic_device *sdev = netdev_priv(dev);

 unregister_netdev(dev);
 iounmap(sdev->regs);
 free_netdev(dev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
