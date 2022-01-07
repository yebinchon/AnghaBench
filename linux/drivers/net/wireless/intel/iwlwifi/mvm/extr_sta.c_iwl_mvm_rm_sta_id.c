
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct iwl_mvm {int * fw_id_to_mac_id; int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int iwl_mvm_rm_sta_common (struct iwl_mvm*,size_t) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_rm_sta_id(struct iwl_mvm *mvm,
        struct ieee80211_vif *vif,
        u8 sta_id)
{
 int ret = iwl_mvm_rm_sta_common(mvm, sta_id);

 lockdep_assert_held(&mvm->mutex);

 RCU_INIT_POINTER(mvm->fw_id_to_mac_id[sta_id], ((void*)0));
 return ret;
}
