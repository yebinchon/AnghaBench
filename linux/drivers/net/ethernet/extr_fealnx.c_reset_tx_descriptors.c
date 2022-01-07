
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_private {int free_tx_count; struct fealnx_desc* tx_ring; scalar_t__ tx_ring_dma; int pci_dev; scalar_t__ really_tx_count; struct fealnx_desc* cur_tx_copy; struct fealnx_desc* cur_tx; } ;
struct net_device {int dummy; } ;
struct fealnx_desc {struct fealnx_desc* next_desc_logical; scalar_t__ next_desc; scalar_t__ control; scalar_t__ status; TYPE_1__* skbuff; int buffer; } ;
struct TYPE_2__ {int len; } ;


 int PCI_DMA_TODEVICE ;
 int TX_RING_SIZE ;
 int dev_kfree_skb_any (TYPE_1__*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void reset_tx_descriptors(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 struct fealnx_desc *cur;
 int i;


 np->cur_tx = &np->tx_ring[0];
 np->cur_tx_copy = &np->tx_ring[0];
 np->really_tx_count = 0;
 np->free_tx_count = TX_RING_SIZE;

 for (i = 0; i < TX_RING_SIZE; i++) {
  cur = &np->tx_ring[i];
  if (cur->skbuff) {
   pci_unmap_single(np->pci_dev, cur->buffer,
    cur->skbuff->len, PCI_DMA_TODEVICE);
   dev_kfree_skb_any(cur->skbuff);
   cur->skbuff = ((void*)0);
  }
  cur->status = 0;
  cur->control = 0;

  cur->next_desc = np->tx_ring_dma +
   (i + 1)*sizeof(struct fealnx_desc);
  cur->next_desc_logical = &np->tx_ring[i + 1];
 }

 np->tx_ring[TX_RING_SIZE - 1].next_desc = np->tx_ring_dma;
 np->tx_ring[TX_RING_SIZE - 1].next_desc_logical = &np->tx_ring[0];
}
