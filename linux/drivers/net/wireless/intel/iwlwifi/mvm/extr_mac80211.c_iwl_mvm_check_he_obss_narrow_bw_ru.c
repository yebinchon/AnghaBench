
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_mvm_vif {int he_ru_2mhz_block; } ;
struct iwl_mvm_he_obss_narrow_bw_ru_data {int tolerated; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct TYPE_5__ {TYPE_3__ chandef; } ;
struct ieee80211_vif {TYPE_2__ bss_conf; } ;
struct ieee80211_hw {int wiphy; } ;
struct TYPE_4__ {int flags; } ;


 int IEEE80211_CHAN_RADAR ;
 int cfg80211_bss_iter (int ,TYPE_3__*,int ,struct iwl_mvm_he_obss_narrow_bw_ru_data*) ;
 int iwl_mvm_check_he_obss_narrow_bw_ru_iter ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_check_he_obss_narrow_bw_ru(struct ieee80211_hw *hw,
            struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_he_obss_narrow_bw_ru_data iter_data = {
  .tolerated = 1,
 };

 if (!(vif->bss_conf.chandef.chan->flags & IEEE80211_CHAN_RADAR)) {
  mvmvif->he_ru_2mhz_block = 0;
  return;
 }

 cfg80211_bss_iter(hw->wiphy, &vif->bss_conf.chandef,
     iwl_mvm_check_he_obss_narrow_bw_ru_iter,
     &iter_data);





 mvmvif->he_ru_2mhz_block = !iter_data.tolerated;
}
