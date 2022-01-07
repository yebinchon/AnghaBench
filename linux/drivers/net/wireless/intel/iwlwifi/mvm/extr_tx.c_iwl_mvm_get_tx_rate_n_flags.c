
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
typedef int __le16 ;


 int iwl_mvm_get_tx_ant (struct iwl_mvm*,struct ieee80211_tx_info*,struct ieee80211_sta*,int ) ;
 int iwl_mvm_get_tx_rate (struct iwl_mvm*,struct ieee80211_tx_info*,struct ieee80211_sta*) ;

__attribute__((used)) static u32 iwl_mvm_get_tx_rate_n_flags(struct iwl_mvm *mvm,
           struct ieee80211_tx_info *info,
           struct ieee80211_sta *sta, __le16 fc)
{
 return iwl_mvm_get_tx_rate(mvm, info, sta) |
  iwl_mvm_get_tx_ant(mvm, info, sta, fc);
}
