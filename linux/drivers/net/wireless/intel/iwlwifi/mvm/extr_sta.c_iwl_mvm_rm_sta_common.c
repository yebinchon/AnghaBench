
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct iwl_mvm_rm_sta_cmd {size_t sta_id; } ;
struct iwl_mvm {int mutex; int * fw_id_to_mac_id; } ;
struct ieee80211_sta {int dummy; } ;
typedef int rm_sta_cmd ;


 int EINVAL ;
 int IWL_ERR (struct iwl_mvm*,char*,...) ;
 int REMOVE_STA ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_mvm_rm_sta_cmd*) ;
 int lockdep_is_held (int *) ;
 struct ieee80211_sta* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static int iwl_mvm_rm_sta_common(struct iwl_mvm *mvm, u8 sta_id)
{
 struct ieee80211_sta *sta;
 struct iwl_mvm_rm_sta_cmd rm_sta_cmd = {
  .sta_id = sta_id,
 };
 int ret;

 sta = rcu_dereference_protected(mvm->fw_id_to_mac_id[sta_id],
     lockdep_is_held(&mvm->mutex));


 if (!sta) {
  IWL_ERR(mvm, "Invalid station id\n");
  return -EINVAL;
 }

 ret = iwl_mvm_send_cmd_pdu(mvm, REMOVE_STA, 0,
       sizeof(rm_sta_cmd), &rm_sta_cmd);
 if (ret) {
  IWL_ERR(mvm, "Failed to remove station. Id=%d\n", sta_id);
  return ret;
 }

 return 0;
}
