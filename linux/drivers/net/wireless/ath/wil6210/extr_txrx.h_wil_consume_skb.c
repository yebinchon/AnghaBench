
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int dev_consume_skb_any (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int skb_complete_wifi_ack (struct sk_buff*,int) ;
 scalar_t__ unlikely (int ) ;
 int wil_need_txstat (struct sk_buff*) ;

__attribute__((used)) static inline void wil_consume_skb(struct sk_buff *skb, bool acked)
{
 if (unlikely(wil_need_txstat(skb)))
  skb_complete_wifi_ack(skb, acked);
 else
  acked ? dev_consume_skb_any(skb) : dev_kfree_skb_any(skb);
}
