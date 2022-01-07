
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r6040_private {int * tx_ring; int tx_ring_dma; int * rx_ring; int rx_ring_dma; int lock; int napi; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int irq; int phydev; } ;


 int RX_DESC_SIZE ;
 int TX_DESC_SIZE ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct r6040_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pci_free_consistent (struct pci_dev*,int ,int *,int ) ;
 int phy_stop (int ) ;
 int r6040_down (struct net_device*) ;
 int r6040_free_rxbufs (struct net_device*) ;
 int r6040_free_txbufs (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int r6040_close(struct net_device *dev)
{
 struct r6040_private *lp = netdev_priv(dev);
 struct pci_dev *pdev = lp->pdev;

 phy_stop(dev->phydev);
 napi_disable(&lp->napi);
 netif_stop_queue(dev);

 spin_lock_irq(&lp->lock);
 r6040_down(dev);


 r6040_free_rxbufs(dev);


 r6040_free_txbufs(dev);

 spin_unlock_irq(&lp->lock);

 free_irq(dev->irq, dev);


 if (lp->rx_ring) {
  pci_free_consistent(pdev,
    RX_DESC_SIZE, lp->rx_ring, lp->rx_ring_dma);
  lp->rx_ring = ((void*)0);
 }

 if (lp->tx_ring) {
  pci_free_consistent(pdev,
    TX_DESC_SIZE, lp->tx_ring, lp->tx_ring_dma);
  lp->tx_ring = ((void*)0);
 }

 return 0;
}
