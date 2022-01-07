
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;


 scalar_t__ VNET_PACKET_SKIP ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *alloc_and_align_skb(struct net_device *dev,
        unsigned int len)
{
 struct sk_buff *skb;
 unsigned long addr, off;

 skb = netdev_alloc_skb(dev, len + VNET_PACKET_SKIP + 8 + 8);
 if (unlikely(!skb))
  return ((void*)0);

 addr = (unsigned long)skb->data;
 off = ((addr + 7UL) & ~7UL) - addr;
 if (off)
  skb_reserve(skb, off);

 return skb;
}
