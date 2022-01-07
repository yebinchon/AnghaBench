
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_3__ {int collisions; int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct epic_private {unsigned int cur_tx; unsigned int dirty_tx; int tx_full; struct sk_buff** tx_skbuff; TYPE_2__* tx_ring; int pci_dev; } ;
struct TYPE_4__ {int txstatus; int bufaddr; } ;


 int DescOwn ;
 int PCI_DMA_TODEVICE ;
 int TX_QUEUE_LEN ;
 unsigned int TX_RING_SIZE ;
 int dev_consume_skb_irq (struct sk_buff*) ;
 int epic_tx_error (struct net_device*,struct epic_private*,int) ;
 scalar_t__ likely (int) ;
 int netdev_warn (struct net_device*,char*,unsigned int,unsigned int,int ) ;
 int netif_wake_queue (struct net_device*) ;
 int pci_unmap_single (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void epic_tx(struct net_device *dev, struct epic_private *ep)
{
 unsigned int dirty_tx, cur_tx;





 cur_tx = ep->cur_tx;
 for (dirty_tx = ep->dirty_tx; cur_tx - dirty_tx > 0; dirty_tx++) {
  struct sk_buff *skb;
  int entry = dirty_tx % TX_RING_SIZE;
  int txstatus = ep->tx_ring[entry].txstatus;

  if (txstatus & DescOwn)
   break;

  if (likely(txstatus & 0x0001)) {
   dev->stats.collisions += (txstatus >> 8) & 15;
   dev->stats.tx_packets++;
   dev->stats.tx_bytes += ep->tx_skbuff[entry]->len;
  } else
   epic_tx_error(dev, ep, txstatus);


  skb = ep->tx_skbuff[entry];
  pci_unmap_single(ep->pci_dev, ep->tx_ring[entry].bufaddr,
     skb->len, PCI_DMA_TODEVICE);
  dev_consume_skb_irq(skb);
  ep->tx_skbuff[entry] = ((void*)0);
 }


 if (cur_tx - dirty_tx > TX_RING_SIZE) {
  netdev_warn(dev, "Out-of-sync dirty pointer, %d vs. %d, full=%d.\n",
       dirty_tx, cur_tx, ep->tx_full);
  dirty_tx += TX_RING_SIZE;
 }

 ep->dirty_tx = dirty_tx;
 if (ep->tx_full && cur_tx - dirty_tx < TX_QUEUE_LEN - 4) {

  ep->tx_full = 0;
  netif_wake_queue(dev);
 }
}
