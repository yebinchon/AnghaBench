
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {struct sk_buff** rx_skb_pool; } ;
typedef TYPE_1__ rtl8150_t ;


 scalar_t__ RTL8150_MTU ;
 int RX_SKB_POOL_SIZE ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static void fill_skb_pool(rtl8150_t *dev)
{
 struct sk_buff *skb;
 int i;

 for (i = 0; i < RX_SKB_POOL_SIZE; i++) {
  if (dev->rx_skb_pool[i])
   continue;
  skb = dev_alloc_skb(RTL8150_MTU + 2);
  if (!skb) {
   return;
  }
  skb_reserve(skb, 2);
  dev->rx_skb_pool[i] = skb;
 }
}
