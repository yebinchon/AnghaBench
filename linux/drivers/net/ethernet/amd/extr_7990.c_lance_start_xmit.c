
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int * data; } ;
struct net_device {int dummy; } ;
struct lance_private {int tx_new; int tx_ring_mod_mask; int tx_full; int devlock; struct lance_init_block* init_block; } ;
struct lance_init_block {TYPE_1__* btx_ring; int ** tx_buf; } ;
struct TYPE_2__ {int length; int tmd1_bits; scalar_t__ misc; } ;


 int ETH_ZLEN ;
 int LE_C0_INEA ;
 int LE_C0_TDMD ;
 int LE_T1_OWN ;
 int LE_T1_POK ;
 int NETDEV_TX_OK ;
 scalar_t__ TX_BUFFS_AVAIL ;
 int WRITERDP (struct lance_private*,int) ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int memset (void*,int ,int) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int printk (char*,...) ;
 int skb_copy_from_linear_data (struct sk_buff*,void*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int lance_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct lance_private *lp = netdev_priv(dev);
 volatile struct lance_init_block *ib = lp->init_block;
 int entry, skblen, len;
 static int outs;
 unsigned long flags;

 netif_stop_queue(dev);

 if (!TX_BUFFS_AVAIL) {
  dev_consume_skb_any(skb);
  return NETDEV_TX_OK;
 }

 skblen = skb->len;
 len = (skblen <= ETH_ZLEN) ? ETH_ZLEN : skblen;
 entry = lp->tx_new & lp->tx_ring_mod_mask;
 ib->btx_ring[entry].length = (-len) | 0xf000;
 ib->btx_ring[entry].misc = 0;

 if (skb->len < ETH_ZLEN)
  memset((void *)&ib->tx_buf[entry][0], 0, ETH_ZLEN);
 skb_copy_from_linear_data(skb, (void *)&ib->tx_buf[entry][0], skblen);


 ib->btx_ring[entry].tmd1_bits = (LE_T1_POK|LE_T1_OWN);
 lp->tx_new = (lp->tx_new + 1) & lp->tx_ring_mod_mask;

 outs++;

 WRITERDP(lp, LE_C0_INEA | LE_C0_TDMD);
 dev_consume_skb_any(skb);

 spin_lock_irqsave(&lp->devlock, flags);
 if (TX_BUFFS_AVAIL)
  netif_start_queue(dev);
 else
  lp->tx_full = 1;
 spin_unlock_irqrestore(&lp->devlock, flags);

 return NETDEV_TX_OK;
}
