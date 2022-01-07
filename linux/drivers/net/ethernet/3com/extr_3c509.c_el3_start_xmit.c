
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_2__ {int tx_bytes; int tx_aborted_errors; } ;
struct net_device {int base_addr; TYPE_1__ stats; int name; } ;
struct el3_private {int lock; } ;
typedef int netdev_tx_t ;


 scalar_t__ EL3_CMD ;
 scalar_t__ EL3_STATUS ;
 int NETDEV_TX_OK ;
 int SetTxThreshold ;
 scalar_t__ TX_FIFO ;
 scalar_t__ TX_FREE ;
 scalar_t__ TX_STATUS ;
 int TxEnable ;
 int TxReset ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int el3_debug ;
 short inb (scalar_t__) ;
 int inw (scalar_t__) ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outb (int,scalar_t__) ;
 int outsl (scalar_t__,int ,int) ;
 int outw (int,scalar_t__) ;
 int pr_debug (char*,int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t
el3_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct el3_private *lp = netdev_priv(dev);
 int ioaddr = dev->base_addr;
 unsigned long flags;

 netif_stop_queue (dev);

 dev->stats.tx_bytes += skb->len;

 if (el3_debug > 4) {
  pr_debug("%s: el3_start_xmit(length = %u) called, status %4.4x.\n",
      dev->name, skb->len, inw(ioaddr + EL3_STATUS));
 }
 spin_lock_irqsave(&lp->lock, flags);


 outw(skb->len, ioaddr + TX_FIFO);
 outw(0x00, ioaddr + TX_FIFO);

 outsl(ioaddr + TX_FIFO, skb->data, (skb->len + 3) >> 2);

 if (inw(ioaddr + TX_FREE) > 1536)
  netif_start_queue(dev);
 else

  outw(SetTxThreshold + 1536, ioaddr + EL3_CMD);

 spin_unlock_irqrestore(&lp->lock, flags);

 dev_consume_skb_any (skb);


 {
  short tx_status;
  int i = 4;

  while (--i > 0 && (tx_status = inb(ioaddr + TX_STATUS)) > 0) {
   if (tx_status & 0x38) dev->stats.tx_aborted_errors++;
   if (tx_status & 0x30) outw(TxReset, ioaddr + EL3_CMD);
   if (tx_status & 0x3C) outw(TxEnable, ioaddr + EL3_CMD);
   outb(0x00, ioaddr + TX_STATUS);
  }
 }
 return NETDEV_TX_OK;
}
