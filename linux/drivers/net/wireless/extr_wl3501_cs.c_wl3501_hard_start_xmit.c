
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl3501_card {int tx_buffer_cnt; int lock; } ;
struct sk_buff {scalar_t__ len; int data; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int kfree_skb (struct sk_buff*) ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wl3501_block_interrupt (struct wl3501_card*) ;
 int wl3501_send_pkt (struct wl3501_card*,int ,scalar_t__) ;
 int wl3501_unblock_interrupt (struct wl3501_card*) ;

__attribute__((used)) static netdev_tx_t wl3501_hard_start_xmit(struct sk_buff *skb,
      struct net_device *dev)
{
 int enabled, rc;
 struct wl3501_card *this = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&this->lock, flags);
 enabled = wl3501_block_interrupt(this);
 rc = wl3501_send_pkt(this, skb->data, skb->len);
 if (enabled)
  wl3501_unblock_interrupt(this);
 if (rc) {
  ++dev->stats.tx_dropped;
  netif_stop_queue(dev);
 } else {
  ++dev->stats.tx_packets;
  dev->stats.tx_bytes += skb->len;
  kfree_skb(skb);

  if (this->tx_buffer_cnt < 2)
   netif_stop_queue(dev);
 }
 spin_unlock_irqrestore(&this->lock, flags);
 return NETDEV_TX_OK;
}
