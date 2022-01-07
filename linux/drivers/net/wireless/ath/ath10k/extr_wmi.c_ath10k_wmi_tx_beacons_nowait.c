
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int hw; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int ath10k_wmi_tx_beacons_iter ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,int *) ;

__attribute__((used)) static void ath10k_wmi_tx_beacons_nowait(struct ath10k *ar)
{
 ieee80211_iterate_active_interfaces_atomic(ar->hw,
         IEEE80211_IFACE_ITER_NORMAL,
         ath10k_wmi_tx_beacons_iter,
         ((void*)0));
}
