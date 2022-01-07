
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ec_bhf_priv {int io; int dma_io; } ;


 int free_netdev (struct net_device*) ;
 struct ec_bhf_priv* netdev_priv (struct net_device*) ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void ec_bhf_remove(struct pci_dev *dev)
{
 struct net_device *net_dev = pci_get_drvdata(dev);
 struct ec_bhf_priv *priv = netdev_priv(net_dev);

 unregister_netdev(net_dev);
 free_netdev(net_dev);

 pci_iounmap(dev, priv->dma_io);
 pci_iounmap(dev, priv->io);
 pci_release_regions(dev);
 pci_clear_master(dev);
 pci_disable_device(dev);
}
