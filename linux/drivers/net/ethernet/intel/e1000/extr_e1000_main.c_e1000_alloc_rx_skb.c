
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct e1000_adapter {int alloc_rx_buff_failed; int napi; } ;


 struct sk_buff* napi_alloc_skb (int *,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *e1000_alloc_rx_skb(struct e1000_adapter *adapter,
       unsigned int bufsz)
{
 struct sk_buff *skb = napi_alloc_skb(&adapter->napi, bufsz);

 if (unlikely(!skb))
  adapter->alloc_rx_buff_failed++;
 return skb;
}
