
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct netdev_private {int eeprom_addr; int ioaddr; int tx_ring_dma; int tx_ring; int rx_ring_dma; int rx_ring; } ;
struct net_device {int dummy; } ;


 int RX_TOTAL_SIZE ;
 int TX_TOTAL_SIZE ;
 int free_netdev (struct net_device*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int ,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void
rio_remove1 (struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata (pdev);

 if (dev) {
  struct netdev_private *np = netdev_priv(dev);

  unregister_netdev (dev);
  pci_free_consistent (pdev, RX_TOTAL_SIZE, np->rx_ring,
         np->rx_ring_dma);
  pci_free_consistent (pdev, TX_TOTAL_SIZE, np->tx_ring,
         np->tx_ring_dma);



  pci_iounmap(pdev, np->eeprom_addr);
  free_netdev (dev);
  pci_release_regions (pdev);
  pci_disable_device (pdev);
 }
}
