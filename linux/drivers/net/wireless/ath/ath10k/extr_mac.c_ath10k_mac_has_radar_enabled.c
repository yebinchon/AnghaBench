
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int hw; } ;


 int ath10k_mac_has_radar_iter ;
 int ieee80211_iter_chan_contexts_atomic (int ,int ,int*) ;

__attribute__((used)) static bool ath10k_mac_has_radar_enabled(struct ath10k *ar)
{
 bool has_radar = 0;

 ieee80211_iter_chan_contexts_atomic(ar->hw,
         ath10k_mac_has_radar_iter,
         &has_radar);

 return has_radar;
}
