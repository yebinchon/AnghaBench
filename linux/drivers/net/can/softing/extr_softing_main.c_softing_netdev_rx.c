
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int tstamp; } ;
struct net_device {int dummy; } ;
struct can_frame {int dummy; } ;
typedef int ktime_t ;


 int ENOMEM ;
 struct sk_buff* alloc_can_skb (struct net_device*,struct can_frame**) ;
 int memcpy (struct can_frame*,struct can_frame const*,int) ;
 int netif_rx (struct sk_buff*) ;

int softing_netdev_rx(struct net_device *netdev, const struct can_frame *msg,
  ktime_t ktime)
{
 struct sk_buff *skb;
 struct can_frame *cf;

 skb = alloc_can_skb(netdev, &cf);
 if (!skb)
  return -ENOMEM;
 memcpy(cf, msg, sizeof(*msg));
 skb->tstamp = ktime;
 return netif_rx(skb);
}
