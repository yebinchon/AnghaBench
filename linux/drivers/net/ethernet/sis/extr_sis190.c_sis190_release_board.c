
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis190_private {int mmio_addr; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct sis190_private* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void sis190_release_board(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct sis190_private *tp = netdev_priv(dev);

 iounmap(tp->mmio_addr);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 free_netdev(dev);
}
