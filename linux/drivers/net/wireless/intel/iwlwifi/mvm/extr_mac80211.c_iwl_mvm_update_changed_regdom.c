
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {TYPE_1__* hw; } ;
struct ieee80211_regdomain {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;


 int IS_ERR_OR_NULL (struct ieee80211_regdomain*) ;
 struct ieee80211_regdomain* iwl_mvm_get_current_regdomain (struct iwl_mvm*,int*) ;
 int iwl_mvm_is_lar_supported (struct iwl_mvm*) ;
 int kfree (struct ieee80211_regdomain*) ;
 int regulatory_set_wiphy_regd (int ,struct ieee80211_regdomain*) ;

void iwl_mvm_update_changed_regdom(struct iwl_mvm *mvm)
{
 bool changed;
 struct ieee80211_regdomain *regd;

 if (!iwl_mvm_is_lar_supported(mvm))
  return;

 regd = iwl_mvm_get_current_regdomain(mvm, &changed);
 if (!IS_ERR_OR_NULL(regd)) {

  if (changed)
   regulatory_set_wiphy_regd(mvm->hw->wiphy, regd);

  kfree(regd);
 }
}
