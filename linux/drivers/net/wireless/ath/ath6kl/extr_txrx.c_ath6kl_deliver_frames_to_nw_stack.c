
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; int protocol; } ;
struct net_device {int flags; } ;


 int IFF_UP ;
 int dev_kfree_skb (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int netif_rx_ni (struct sk_buff*) ;

__attribute__((used)) static void ath6kl_deliver_frames_to_nw_stack(struct net_device *dev,
           struct sk_buff *skb)
{
 if (!skb)
  return;

 skb->dev = dev;

 if (!(skb->dev->flags & IFF_UP)) {
  dev_kfree_skb(skb);
  return;
 }

 skb->protocol = eth_type_trans(skb, skb->dev);

 netif_rx_ni(skb);
}
