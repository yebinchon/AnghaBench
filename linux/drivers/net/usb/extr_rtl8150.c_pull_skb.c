
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {struct sk_buff** rx_skb_pool; } ;
typedef TYPE_1__ rtl8150_t ;


 int RX_SKB_POOL_SIZE ;

__attribute__((used)) static inline struct sk_buff *pull_skb(rtl8150_t *dev)
{
 struct sk_buff *skb;
 int i;

 for (i = 0; i < RX_SKB_POOL_SIZE; i++) {
  if (dev->rx_skb_pool[i]) {
   skb = dev->rx_skb_pool[i];
   dev->rx_skb_pool[i] = ((void*)0);
   return skb;
  }
 }
 return ((void*)0);
}
