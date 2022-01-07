
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {TYPE_1__* hw; } ;
struct ieee80211_regdomain {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;


 int MCC_SOURCE_GET_CURRENT ;
 int MCC_SOURCE_OLD_FW ;
 struct ieee80211_regdomain* iwl_mvm_get_regdomain (int ,char*,int ,int*) ;
 scalar_t__ iwl_mvm_is_wifi_mcc_supported (struct iwl_mvm*) ;

struct ieee80211_regdomain *iwl_mvm_get_current_regdomain(struct iwl_mvm *mvm,
         bool *changed)
{
 return iwl_mvm_get_regdomain(mvm->hw->wiphy, "ZZ",
         iwl_mvm_is_wifi_mcc_supported(mvm) ?
         MCC_SOURCE_GET_CURRENT :
         MCC_SOURCE_OLD_FW, changed);
}
