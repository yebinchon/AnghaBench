
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int base_addr; } ;


 int BUG_ON (int) ;
 int NE_IO_EXTENT ;
 int free_netdev (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int release_region (int ,int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void ne2k_pci_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);

 BUG_ON(!dev);
 unregister_netdev(dev);
 release_region(dev->base_addr, NE_IO_EXTENT);
 free_netdev(dev);
 pci_disable_device(pdev);
}
