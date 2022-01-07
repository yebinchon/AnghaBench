
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k {int hw; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int ath10k_mac_handle_beacon_iter ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct sk_buff*) ;

void ath10k_mac_handle_beacon(struct ath10k *ar, struct sk_buff *skb)
{
 ieee80211_iterate_active_interfaces_atomic(ar->hw,
         IEEE80211_IFACE_ITER_NORMAL,
         ath10k_mac_handle_beacon_iter,
         skb);
}
