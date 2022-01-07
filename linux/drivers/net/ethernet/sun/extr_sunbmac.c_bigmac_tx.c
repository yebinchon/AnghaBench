
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_5__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct bigmac {int tx_old; int tx_new; int lock; struct net_device* dev; struct sk_buff** tx_skbs; TYPE_3__* bigmac_op; TYPE_1__* bmac_block; } ;
struct be_txd {int tx_flags; int tx_addr; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {struct be_txd* be_txd; } ;


 int DMA_TO_DEVICE ;
 int DTX (char*) ;
 int NEXT_TX (int) ;
 int TXD_OWN ;
 scalar_t__ TX_BUFFS_AVAIL (struct bigmac*) ;
 int dev_consume_skb_irq (struct sk_buff*) ;
 int dma_unmap_single (int *,int ,scalar_t__,int ) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void bigmac_tx(struct bigmac *bp)
{
 struct be_txd *txbase = &bp->bmac_block->be_txd[0];
 struct net_device *dev = bp->dev;
 int elem;

 spin_lock(&bp->lock);

 elem = bp->tx_old;
 DTX(("bigmac_tx: tx_old[%d] ", elem));
 while (elem != bp->tx_new) {
  struct sk_buff *skb;
  struct be_txd *this = &txbase[elem];

  DTX(("this(%p) [flags(%08x)addr(%08x)]",
       this, this->tx_flags, this->tx_addr));

  if (this->tx_flags & TXD_OWN)
   break;
  skb = bp->tx_skbs[elem];
  dev->stats.tx_packets++;
  dev->stats.tx_bytes += skb->len;
  dma_unmap_single(&bp->bigmac_op->dev,
     this->tx_addr, skb->len,
     DMA_TO_DEVICE);

  DTX(("skb(%p) ", skb));
  bp->tx_skbs[elem] = ((void*)0);
  dev_consume_skb_irq(skb);

  elem = NEXT_TX(elem);
 }
 DTX((" DONE, tx_old=%d\n", elem));
 bp->tx_old = elem;

 if (netif_queue_stopped(dev) &&
     TX_BUFFS_AVAIL(bp) > 0)
  netif_wake_queue(bp->dev);

 spin_unlock(&bp->lock);
}
