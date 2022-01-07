
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nic {int cbs_pool; int csr; } ;
struct net_device {int dummy; } ;


 int dma_pool_destroy (int ) ;
 int e100_free (struct nic*) ;
 int free_netdev (struct net_device*) ;
 struct nic* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void e100_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);

 if (netdev) {
  struct nic *nic = netdev_priv(netdev);
  unregister_netdev(netdev);
  e100_free(nic);
  pci_iounmap(pdev, nic->csr);
  dma_pool_destroy(nic->cbs_pool);
  free_netdev(netdev);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
 }
}
