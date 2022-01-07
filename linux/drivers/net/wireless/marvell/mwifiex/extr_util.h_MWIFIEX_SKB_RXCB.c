
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct mwifiex_rxinfo {int dummy; } ;
struct mwifiex_cb {struct mwifiex_rxinfo rx_info; } ;


 int BUILD_BUG_ON (int) ;

__attribute__((used)) static inline struct mwifiex_rxinfo *MWIFIEX_SKB_RXCB(struct sk_buff *skb)
{
 struct mwifiex_cb *cb = (struct mwifiex_cb *)skb->cb;

 BUILD_BUG_ON(sizeof(struct mwifiex_cb) > sizeof(skb->cb));
 return &cb->rx_info;
}
