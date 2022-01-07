
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct ath10k_skb_rxcb {int dummy; } ;


 int BUILD_BUG_ON (int) ;

__attribute__((used)) static inline struct ath10k_skb_rxcb *ATH10K_SKB_RXCB(struct sk_buff *skb)
{
 BUILD_BUG_ON(sizeof(struct ath10k_skb_rxcb) > sizeof(skb->cb));
 return (struct ath10k_skb_rxcb *)skb->cb;
}
