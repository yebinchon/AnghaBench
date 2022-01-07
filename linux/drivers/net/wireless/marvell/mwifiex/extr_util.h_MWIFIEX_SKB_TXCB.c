
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct mwifiex_txinfo {int dummy; } ;
struct mwifiex_cb {struct mwifiex_txinfo tx_info; } ;



__attribute__((used)) static inline struct mwifiex_txinfo *MWIFIEX_SKB_TXCB(struct sk_buff *skb)
{
 struct mwifiex_cb *cb = (struct mwifiex_cb *)skb->cb;

 return &cb->tx_info;
}
