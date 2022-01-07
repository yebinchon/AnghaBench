
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int stbc_capable; } ;
struct ieee80211_sta {int dummy; } ;


 int iwl_mvm_bt_coex_is_mimo_allowed (struct iwl_mvm*,struct ieee80211_sta*) ;

__attribute__((used)) static bool rs_stbc_allow(struct iwl_mvm *mvm, struct ieee80211_sta *sta,
     struct iwl_lq_sta *lq_sta)
{



 if (!lq_sta->stbc_capable)
  return 0;

 if (!iwl_mvm_bt_coex_is_mimo_allowed(mvm, sta))
  return 0;

 return 1;
}
