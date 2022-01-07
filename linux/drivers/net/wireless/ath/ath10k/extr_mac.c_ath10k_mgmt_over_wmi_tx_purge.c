
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k {int hw; int wmi_mgmt_tx_queue; } ;


 int ieee80211_free_txskb (int ,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

void ath10k_mgmt_over_wmi_tx_purge(struct ath10k *ar)
{
 struct sk_buff *skb;

 for (;;) {
  skb = skb_dequeue(&ar->wmi_mgmt_tx_queue);
  if (!skb)
   break;

  ieee80211_free_txskb(ar->hw, skb);
 }
}
