
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct ath9k_htc_tx_ctl {scalar_t__ type; scalar_t__ sta_idx; } ;


 scalar_t__ ATH9K_HTC_AMPDU ;
 struct ath9k_htc_tx_ctl* HTC_SKB_CB (struct sk_buff*) ;

__attribute__((used)) static inline bool check_index(struct sk_buff *skb, u8 idx)
{
 struct ath9k_htc_tx_ctl *tx_ctl;

 tx_ctl = HTC_SKB_CB(skb);

 if ((tx_ctl->type == ATH9K_HTC_AMPDU) &&
     (tx_ctl->sta_idx == idx))
  return 1;

 return 0;
}
