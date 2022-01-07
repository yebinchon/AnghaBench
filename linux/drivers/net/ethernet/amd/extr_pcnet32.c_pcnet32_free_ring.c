
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcnet32_tx_head {int dummy; } ;
struct pcnet32_rx_head {int dummy; } ;
struct pcnet32_private {int tx_ring_size; int rx_ring_size; int * rx_ring; int rx_ring_dma_addr; int pci_dev; int * tx_ring; int tx_ring_dma_addr; int * rx_dma_addr; int * tx_dma_addr; int * rx_skbuff; int * tx_skbuff; } ;
struct net_device {int dummy; } ;


 int kfree (int *) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int pci_free_consistent (int ,int,int *,int ) ;

__attribute__((used)) static void pcnet32_free_ring(struct net_device *dev)
{
 struct pcnet32_private *lp = netdev_priv(dev);

 kfree(lp->tx_skbuff);
 lp->tx_skbuff = ((void*)0);

 kfree(lp->rx_skbuff);
 lp->rx_skbuff = ((void*)0);

 kfree(lp->tx_dma_addr);
 lp->tx_dma_addr = ((void*)0);

 kfree(lp->rx_dma_addr);
 lp->rx_dma_addr = ((void*)0);

 if (lp->tx_ring) {
  pci_free_consistent(lp->pci_dev,
        sizeof(struct pcnet32_tx_head) *
        lp->tx_ring_size, lp->tx_ring,
        lp->tx_ring_dma_addr);
  lp->tx_ring = ((void*)0);
 }

 if (lp->rx_ring) {
  pci_free_consistent(lp->pci_dev,
        sizeof(struct pcnet32_rx_head) *
        lp->rx_ring_size, lp->rx_ring,
        lp->rx_ring_dma_addr);
  lp->rx_ring = ((void*)0);
 }
}
