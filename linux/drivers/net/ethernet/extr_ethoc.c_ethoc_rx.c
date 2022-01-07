
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_2__ {int rx_bytes; int rx_dropped; int rx_packets; } ;
struct net_device {TYPE_1__ stats; int dev; } ;
struct ethoc_bd {int stat; } ;
struct ethoc {unsigned int num_tx; unsigned int cur_rx; scalar_t__ num_rx; void** vma; } ;


 int INT_MASK_RX ;
 int RX_BD_EMPTY ;
 int RX_BD_STATS ;
 int dev_warn (int *,char*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int ethoc_ack_irq (struct ethoc*,int ) ;
 int ethoc_read_bd (struct ethoc*,unsigned int,struct ethoc_bd*) ;
 scalar_t__ ethoc_update_rx_stats (struct ethoc*,struct ethoc_bd*) ;
 int ethoc_write_bd (struct ethoc*,unsigned int,struct ethoc_bd*) ;
 scalar_t__ likely (struct sk_buff*) ;
 int memcpy_fromio (int ,void*,int) ;
 scalar_t__ net_ratelimit () ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int) ;
 struct ethoc* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int ethoc_rx(struct net_device *dev, int limit)
{
 struct ethoc *priv = netdev_priv(dev);
 int count;

 for (count = 0; count < limit; ++count) {
  unsigned int entry;
  struct ethoc_bd bd;

  entry = priv->num_tx + priv->cur_rx;
  ethoc_read_bd(priv, entry, &bd);
  if (bd.stat & RX_BD_EMPTY) {
   ethoc_ack_irq(priv, INT_MASK_RX);







   ethoc_read_bd(priv, entry, &bd);
   if (bd.stat & RX_BD_EMPTY)
    break;
  }

  if (ethoc_update_rx_stats(priv, &bd) == 0) {
   int size = bd.stat >> 16;
   struct sk_buff *skb;

   size -= 4;
   skb = netdev_alloc_skb_ip_align(dev, size);

   if (likely(skb)) {
    void *src = priv->vma[entry];
    memcpy_fromio(skb_put(skb, size), src, size);
    skb->protocol = eth_type_trans(skb, dev);
    dev->stats.rx_packets++;
    dev->stats.rx_bytes += size;
    netif_receive_skb(skb);
   } else {
    if (net_ratelimit())
     dev_warn(&dev->dev,
         "low on memory - packet dropped\n");

    dev->stats.rx_dropped++;
    break;
   }
  }


  bd.stat &= ~RX_BD_STATS;
  bd.stat |= RX_BD_EMPTY;
  ethoc_write_bd(priv, entry, &bd);
  if (++priv->cur_rx == priv->num_rx)
   priv->cur_rx = 0;
 }

 return count;
}
