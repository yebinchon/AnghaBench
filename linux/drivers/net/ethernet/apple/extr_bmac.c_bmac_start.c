
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bmac_data {int tx_fill; int tx_empty; int lock; int queue; scalar_t__ sleeping; } ;


 int N_TX_RING ;
 int bmac_transmit_packet (struct sk_buff*,struct net_device*) ;
 struct bmac_data* netdev_priv (struct net_device*) ;
 struct sk_buff* skb_dequeue (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
bmac_start(struct net_device *dev)
{
 struct bmac_data *bp = netdev_priv(dev);
 int i;
 struct sk_buff *skb;
 unsigned long flags;

 if (bp->sleeping)
  return;

 spin_lock_irqsave(&bp->lock, flags);
 while (1) {
  i = bp->tx_fill + 1;
  if (i >= N_TX_RING)
   i = 0;
  if (i == bp->tx_empty)
   break;
  skb = skb_dequeue(bp->queue);
  if (skb == ((void*)0))
   break;
  bmac_transmit_packet(skb, dev);
 }
 spin_unlock_irqrestore(&bp->lock, flags);
}
