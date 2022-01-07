
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm_int_sta {size_t sta_id; int type; int tfd_queue_msk; } ;
struct iwl_mvm {int * fw_id_to_mac_id; int status; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef enum iwl_sta_type { ____Placeholder_iwl_sta_type } iwl_sta_type ;


 int EINVAL ;
 int ENOSPC ;
 int ERR_PTR (int ) ;
 size_t IWL_MVM_INVALID_STA ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 scalar_t__ WARN_ON_ONCE (int) ;
 size_t iwl_mvm_find_free_sta_id (struct iwl_mvm*,int) ;
 int rcu_assign_pointer (int ,int ) ;
 int test_bit (int ,int *) ;

int iwl_mvm_allocate_int_sta(struct iwl_mvm *mvm,
        struct iwl_mvm_int_sta *sta,
        u32 qmask, enum nl80211_iftype iftype,
        enum iwl_sta_type type)
{
 if (!test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status) ||
     sta->sta_id == IWL_MVM_INVALID_STA) {
  sta->sta_id = iwl_mvm_find_free_sta_id(mvm, iftype);
  if (WARN_ON_ONCE(sta->sta_id == IWL_MVM_INVALID_STA))
   return -ENOSPC;
 }

 sta->tfd_queue_msk = qmask;
 sta->type = type;


 rcu_assign_pointer(mvm->fw_id_to_mac_id[sta->sta_id], ERR_PTR(-EINVAL));
 return 0;
}
