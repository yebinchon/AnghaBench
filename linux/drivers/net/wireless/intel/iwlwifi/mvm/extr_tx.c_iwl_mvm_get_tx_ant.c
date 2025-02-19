
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_mvm_sta {int tx_ant; } ;
struct iwl_mvm {int mgmt_last_antenna_idx; TYPE_1__* cfg; } ;
struct ieee80211_tx_info {scalar_t__ band; } ;
struct ieee80211_sta {int dummy; } ;
typedef int __le16 ;
struct TYPE_2__ {int non_shared_ant; } ;


 int BIT (int ) ;
 scalar_t__ NL80211_BAND_2GHZ ;
 int RATE_MCS_ANT_POS ;
 scalar_t__ ieee80211_is_data (int ) ;
 int iwl_mvm_bt_coex_is_shared_ant_avail (struct iwl_mvm*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;

__attribute__((used)) static u32 iwl_mvm_get_tx_ant(struct iwl_mvm *mvm,
         struct ieee80211_tx_info *info,
         struct ieee80211_sta *sta, __le16 fc)
{
 if (info->band == NL80211_BAND_2GHZ &&
     !iwl_mvm_bt_coex_is_shared_ant_avail(mvm))
  return mvm->cfg->non_shared_ant << RATE_MCS_ANT_POS;

 if (sta && ieee80211_is_data(fc)) {
  struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);

  return BIT(mvmsta->tx_ant) << RATE_MCS_ANT_POS;
 }

 return BIT(mvm->mgmt_last_antenna_idx) << RATE_MCS_ANT_POS;
}
