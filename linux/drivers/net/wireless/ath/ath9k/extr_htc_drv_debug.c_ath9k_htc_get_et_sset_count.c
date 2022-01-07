
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int ATH9K_HTC_SSTATS_LEN ;
 int ETH_SS_STATS ;

int ath9k_htc_get_et_sset_count(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif, int sset)
{
 if (sset == ETH_SS_STATS)
  return ATH9K_HTC_SSTATS_LEN;
 return 0;
}
