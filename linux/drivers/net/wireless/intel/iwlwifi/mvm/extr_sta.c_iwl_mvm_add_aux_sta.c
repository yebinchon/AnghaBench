
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int aux_sta; int aux_queue; int mutex; } ;


 int BIT (int ) ;
 int IWL_MVM_TX_FIFO_MCAST ;
 int IWL_STA_AUX_ACTIVITY ;
 int MAC_INDEX_AUX ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 int iwl_mvm_add_int_sta_with_queue (struct iwl_mvm*,int ,int ,int *,int *,int ) ;
 int iwl_mvm_allocate_int_sta (struct iwl_mvm*,int *,int ,int ,int ) ;
 int iwl_mvm_dealloc_int_sta (struct iwl_mvm*,int *) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_add_aux_sta(struct iwl_mvm *mvm)
{
 int ret;

 lockdep_assert_held(&mvm->mutex);


 ret = iwl_mvm_allocate_int_sta(mvm, &mvm->aux_sta, BIT(mvm->aux_queue),
           NL80211_IFTYPE_UNSPECIFIED,
           IWL_STA_AUX_ACTIVITY);
 if (ret)
  return ret;

 ret = iwl_mvm_add_int_sta_with_queue(mvm, MAC_INDEX_AUX, 0,
          &mvm->aux_sta, &mvm->aux_queue,
          IWL_MVM_TX_FIFO_MCAST);
 if (ret) {
  iwl_mvm_dealloc_int_sta(mvm, &mvm->aux_sta);
  return ret;
 }

 return 0;
}
