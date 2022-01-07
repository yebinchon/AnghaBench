
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yellowfin_private {int base; int tx_ring_dma; int tx_ring; int rx_ring_dma; int rx_ring; int tx_status_dma; int tx_status; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int BUG_ON (int) ;
 int RX_TOTAL_SIZE ;
 int STATUS_TOTAL_SIZE ;
 int TX_TOTAL_SIZE ;
 int free_netdev (struct net_device*) ;
 struct yellowfin_private* netdev_priv (struct net_device*) ;
 int pci_free_consistent (struct pci_dev*,int ,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void yellowfin_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct yellowfin_private *np;

 BUG_ON(!dev);
 np = netdev_priv(dev);

        pci_free_consistent(pdev, STATUS_TOTAL_SIZE, np->tx_status,
  np->tx_status_dma);
 pci_free_consistent(pdev, RX_TOTAL_SIZE, np->rx_ring, np->rx_ring_dma);
 pci_free_consistent(pdev, TX_TOTAL_SIZE, np->tx_ring, np->tx_ring_dma);
 unregister_netdev (dev);

 pci_iounmap(pdev, np->base);

 pci_release_regions (pdev);

 free_netdev (dev);
}
