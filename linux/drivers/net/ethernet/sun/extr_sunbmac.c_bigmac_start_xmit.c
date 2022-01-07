
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct net_device {int dummy; } ;
struct bigmac {int tx_new; scalar_t__ creg; int lock; TYPE_3__* bmac_block; struct sk_buff** tx_skbs; TYPE_1__* bigmac_op; } ;
typedef int netdev_tx_t ;
struct TYPE_6__ {TYPE_2__* be_txd; } ;
struct TYPE_5__ {int tx_flags; int tx_addr; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ CREG_CTRL ;
 int CREG_CTRL_TWAKEUP ;
 int DMA_TO_DEVICE ;
 int DTX (char*) ;
 int NETDEV_TX_OK ;
 int NEXT_TX (int) ;
 int TXD_EOP ;
 int TXD_LENGTH ;
 int TXD_OWN ;
 int TXD_SOP ;
 int TXD_UPDATE ;
 scalar_t__ TX_BUFFS_AVAIL (struct bigmac*) ;
 int dma_map_single (int *,int ,int,int ) ;
 struct bigmac* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int sbus_writel (int ,scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static netdev_tx_t
bigmac_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct bigmac *bp = netdev_priv(dev);
 int len, entry;
 u32 mapping;

 len = skb->len;
 mapping = dma_map_single(&bp->bigmac_op->dev, skb->data,
     len, DMA_TO_DEVICE);


 spin_lock_irq(&bp->lock);
 entry = bp->tx_new;
 DTX(("bigmac_start_xmit: len(%d) entry(%d)\n", len, entry));
 bp->bmac_block->be_txd[entry].tx_flags = TXD_UPDATE;
 bp->tx_skbs[entry] = skb;
 bp->bmac_block->be_txd[entry].tx_addr = mapping;
 bp->bmac_block->be_txd[entry].tx_flags =
  (TXD_OWN | TXD_SOP | TXD_EOP | (len & TXD_LENGTH));
 bp->tx_new = NEXT_TX(entry);
 if (TX_BUFFS_AVAIL(bp) <= 0)
  netif_stop_queue(dev);
 spin_unlock_irq(&bp->lock);


 sbus_writel(CREG_CTRL_TWAKEUP, bp->creg + CREG_CTRL);


 return NETDEV_TX_OK;
}
