
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcnet32_private {int rx_ring_size; scalar_t__* rx_dma_addr; int ** rx_skbuff; int pci_dev; TYPE_1__* rx_ring; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ status; } ;


 int PCI_DMA_FROMDEVICE ;
 int PKT_BUF_SIZE ;
 int dev_kfree_skb_any (int *) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int pci_dma_mapping_error (int ,scalar_t__) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void pcnet32_purge_rx_ring(struct net_device *dev)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 int i;


 for (i = 0; i < lp->rx_ring_size; i++) {
  lp->rx_ring[i].status = 0;
  wmb();
  if (lp->rx_skbuff[i]) {
   if (!pci_dma_mapping_error(lp->pci_dev,
         lp->rx_dma_addr[i]))
    pci_unmap_single(lp->pci_dev,
       lp->rx_dma_addr[i],
       PKT_BUF_SIZE,
       PCI_DMA_FROMDEVICE);
   dev_kfree_skb_any(lp->rx_skbuff[i]);
  }
  lp->rx_skbuff[i] = ((void*)0);
  lp->rx_dma_addr[i] = 0;
 }
}
