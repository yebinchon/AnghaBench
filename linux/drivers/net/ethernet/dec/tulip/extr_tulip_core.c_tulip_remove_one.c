
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tulip_tx_desc {int dummy; } ;
struct tulip_rx_desc {int dummy; } ;
struct tulip_private {int base_addr; int mtable; int rx_ring_dma; int rx_ring; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int free_netdev (struct net_device*) ;
 int kfree (int ) ;
 struct tulip_private* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void tulip_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata (pdev);
 struct tulip_private *tp;

 if (!dev)
  return;

 tp = netdev_priv(dev);
 unregister_netdev(dev);
 pci_free_consistent (pdev,
        sizeof (struct tulip_rx_desc) * RX_RING_SIZE +
        sizeof (struct tulip_tx_desc) * TX_RING_SIZE,
        tp->rx_ring, tp->rx_ring_dma);
 kfree (tp->mtable);
 pci_iounmap(pdev, tp->base_addr);
 free_netdev (dev);
 pci_release_regions (pdev);
 pci_disable_device(pdev);


}
