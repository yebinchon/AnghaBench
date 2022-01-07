
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct jme_adapter {int regs; } ;


 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void
jme_remove_one(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct jme_adapter *jme = netdev_priv(netdev);

 unregister_netdev(netdev);
 iounmap(jme->regs);
 free_netdev(netdev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);

}
