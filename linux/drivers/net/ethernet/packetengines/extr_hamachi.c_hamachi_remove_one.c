
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct hamachi_private {int base; int tx_ring_dma; int tx_ring; int rx_ring_dma; int rx_ring; } ;


 int RX_TOTAL_SIZE ;
 int TX_TOTAL_SIZE ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct hamachi_private* netdev_priv (struct net_device*) ;
 int pci_free_consistent (struct pci_dev*,int ,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void hamachi_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);

 if (dev) {
  struct hamachi_private *hmp = netdev_priv(dev);

  pci_free_consistent(pdev, RX_TOTAL_SIZE, hmp->rx_ring,
   hmp->rx_ring_dma);
  pci_free_consistent(pdev, TX_TOTAL_SIZE, hmp->tx_ring,
   hmp->tx_ring_dma);
  unregister_netdev(dev);
  iounmap(hmp->base);
  free_netdev(dev);
  pci_release_regions(pdev);
 }
}
