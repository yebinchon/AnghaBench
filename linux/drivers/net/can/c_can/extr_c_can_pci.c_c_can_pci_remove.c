
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct c_can_priv {int base; } ;


 int free_c_can_dev (struct net_device*) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_c_can_dev (struct net_device*) ;

__attribute__((used)) static void c_can_pci_remove(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct c_can_priv *priv = netdev_priv(dev);

 unregister_c_can_dev(dev);

 free_c_can_dev(dev);

 pci_iounmap(pdev, priv->base);
 pci_disable_msi(pdev);
 pci_clear_master(pdev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
