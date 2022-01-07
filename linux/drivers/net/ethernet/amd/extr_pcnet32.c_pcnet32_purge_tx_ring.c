
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcnet32_private {int tx_ring_size; scalar_t__* tx_dma_addr; TYPE_2__** tx_skbuff; int pci_dev; TYPE_1__* tx_ring; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_3__ {scalar_t__ status; } ;


 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_any (TYPE_2__*) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int pci_dma_mapping_error (int ,scalar_t__) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void pcnet32_purge_tx_ring(struct net_device *dev)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 int i;

 for (i = 0; i < lp->tx_ring_size; i++) {
  lp->tx_ring[i].status = 0;
  wmb();
  if (lp->tx_skbuff[i]) {
   if (!pci_dma_mapping_error(lp->pci_dev,
         lp->tx_dma_addr[i]))
    pci_unmap_single(lp->pci_dev,
       lp->tx_dma_addr[i],
       lp->tx_skbuff[i]->len,
       PCI_DMA_TODEVICE);
   dev_kfree_skb_any(lp->tx_skbuff[i]);
  }
  lp->tx_skbuff[i] = ((void*)0);
  lp->tx_dma_addr[i] = 0;
 }
}
