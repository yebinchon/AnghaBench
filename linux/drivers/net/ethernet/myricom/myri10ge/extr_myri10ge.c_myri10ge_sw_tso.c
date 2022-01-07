
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct sk_buff* next; } ;
struct net_device {int features; } ;
struct TYPE_2__ {int tx_dropped; } ;
struct myri10ge_slice_state {TYPE_1__ stats; } ;
struct myri10ge_priv {struct myri10ge_slice_state* ss; } ;
typedef scalar_t__ netdev_tx_t ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 scalar_t__ NETDEV_TX_OK ;
 int NETIF_F_TSO6 ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ myri10ge_xmit (struct sk_buff*,struct net_device*) ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 struct sk_buff* skb_gso_segment (struct sk_buff*,int) ;

__attribute__((used)) static netdev_tx_t myri10ge_sw_tso(struct sk_buff *skb,
      struct net_device *dev)
{
 struct sk_buff *segs, *curr;
 struct myri10ge_priv *mgp = netdev_priv(dev);
 struct myri10ge_slice_state *ss;
 netdev_tx_t status;

 segs = skb_gso_segment(skb, dev->features & ~NETIF_F_TSO6);
 if (IS_ERR(segs))
  goto drop;

 while (segs) {
  curr = segs;
  segs = segs->next;
  curr->next = ((void*)0);
  status = myri10ge_xmit(curr, dev);
  if (status != 0) {
   dev_kfree_skb_any(curr);
   if (segs != ((void*)0)) {
    curr = segs;
    segs = segs->next;
    curr->next = ((void*)0);
    dev_kfree_skb_any(segs);
   }
   goto drop;
  }
 }
 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;

drop:
 ss = &mgp->ss[skb_get_queue_mapping(skb)];
 dev_kfree_skb_any(skb);
 ss->stats.tx_dropped += 1;
 return NETDEV_TX_OK;
}
