
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc92031_priv {int rx_ring_dma_addr; int rx_ring; int tx_bufs_dma_addr; int tx_bufs; int lock; struct pci_dev* pdev; } ;
struct pci_dev {int irq; } ;
struct net_device {int dummy; } ;


 int RX_BUF_LEN ;
 int TX_BUF_TOT_LEN ;
 int _sc92031_disable_tx_rx (struct net_device*) ;
 int _sc92031_tx_clear (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 struct sc92031_priv* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int pci_free_consistent (struct pci_dev*,int ,int ,int ) ;
 int sc92031_disable_interrupts (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int sc92031_stop(struct net_device *dev)
{
 struct sc92031_priv *priv = netdev_priv(dev);
 struct pci_dev *pdev = priv->pdev;

 netif_tx_disable(dev);


 sc92031_disable_interrupts(dev);

 spin_lock_bh(&priv->lock);

 _sc92031_disable_tx_rx(dev);
 _sc92031_tx_clear(dev);

 spin_unlock_bh(&priv->lock);

 free_irq(pdev->irq, dev);
 pci_free_consistent(pdev, TX_BUF_TOT_LEN, priv->tx_bufs,
   priv->tx_bufs_dma_addr);
 pci_free_consistent(pdev, RX_BUF_LEN, priv->rx_ring,
   priv->rx_ring_dma_addr);

 return 0;
}
