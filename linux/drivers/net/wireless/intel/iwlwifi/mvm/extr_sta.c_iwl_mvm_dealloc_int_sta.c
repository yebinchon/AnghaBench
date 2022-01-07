
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_int_sta {size_t sta_id; } ;
struct iwl_mvm {int * fw_id_to_mac_id; } ;


 size_t IWL_MVM_INVALID_STA ;
 int RCU_INIT_POINTER (int ,int *) ;
 int memset (struct iwl_mvm_int_sta*,int ,int) ;

void iwl_mvm_dealloc_int_sta(struct iwl_mvm *mvm, struct iwl_mvm_int_sta *sta)
{
 RCU_INIT_POINTER(mvm->fw_id_to_mac_id[sta->sta_id], ((void*)0));
 memset(sta, 0, sizeof(struct iwl_mvm_int_sta));
 sta->sta_id = IWL_MVM_INVALID_STA;
}
