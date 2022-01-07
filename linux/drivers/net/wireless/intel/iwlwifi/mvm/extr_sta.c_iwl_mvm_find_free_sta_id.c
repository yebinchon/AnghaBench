
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm {int mutex; int * fw_id_to_mac_id; int status; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int ARRAY_SIZE (int *) ;
 int BIT (int) ;
 int BUILD_BUG_ON (int) ;
 int IWL_MVM_INVALID_STA ;
 int IWL_MVM_STATION_COUNT ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int NL80211_IFTYPE_STATION ;
 int WARN_ON_ONCE (int ) ;
 int lockdep_assert_held (int *) ;
 int lockdep_is_held (int *) ;
 int rcu_dereference_protected (int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int iwl_mvm_find_free_sta_id(struct iwl_mvm *mvm,
        enum nl80211_iftype iftype)
{
 int sta_id;
 u32 reserved_ids = 0;

 BUILD_BUG_ON(IWL_MVM_STATION_COUNT > 32);
 WARN_ON_ONCE(test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status));

 lockdep_assert_held(&mvm->mutex);


 if (iftype != NL80211_IFTYPE_STATION)
  reserved_ids = BIT(0);


 for (sta_id = 0; sta_id < ARRAY_SIZE(mvm->fw_id_to_mac_id); sta_id++) {
  if (BIT(sta_id) & reserved_ids)
   continue;

  if (!rcu_dereference_protected(mvm->fw_id_to_mac_id[sta_id],
            lockdep_is_held(&mvm->mutex)))
   return sta_id;
 }
 return IWL_MVM_INVALID_STA;
}
