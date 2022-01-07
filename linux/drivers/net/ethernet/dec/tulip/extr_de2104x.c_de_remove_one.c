
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct de_private {int regs; int ee_data; } ;


 int BUG_ON (int) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 struct de_private* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void de_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct de_private *de = netdev_priv(dev);

 BUG_ON(!dev);
 unregister_netdev(dev);
 kfree(de->ee_data);
 iounmap(de->regs);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 free_netdev(dev);
}
