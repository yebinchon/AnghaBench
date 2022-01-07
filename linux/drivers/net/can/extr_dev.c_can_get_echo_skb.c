
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 struct sk_buff* __can_get_echo_skb (struct net_device*,unsigned int,unsigned int*) ;
 int netif_rx (struct sk_buff*) ;

unsigned int can_get_echo_skb(struct net_device *dev, unsigned int idx)
{
 struct sk_buff *skb;
 u8 len;

 skb = __can_get_echo_skb(dev, idx, &len);
 if (!skb)
  return 0;

 netif_rx(skb);

 return len;
}
