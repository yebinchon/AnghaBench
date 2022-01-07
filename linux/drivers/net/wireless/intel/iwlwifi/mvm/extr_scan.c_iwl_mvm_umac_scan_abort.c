
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_umac_scan_abort {int uid; } ;
struct iwl_mvm {int* scan_uid_status; int mutex; } ;
typedef int cmd ;


 int IWL_ALWAYS_LONG_GROUP ;
 int IWL_DEBUG_SCAN (struct iwl_mvm*,char*,int) ;
 int IWL_MVM_SCAN_STOPPING_SHIFT ;
 int SCAN_ABORT_UMAC ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cpu_to_le32 (int) ;
 int iwl_cmd_id (int ,int ,int ) ;
 int iwl_mvm_scan_uid_by_status (struct iwl_mvm*,int) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_umac_scan_abort*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int iwl_mvm_umac_scan_abort(struct iwl_mvm *mvm, int type)
{
 struct iwl_umac_scan_abort cmd = {};
 int uid, ret;

 lockdep_assert_held(&mvm->mutex);





 uid = iwl_mvm_scan_uid_by_status(mvm, type);
 if (WARN_ON_ONCE(uid < 0))
  return uid;

 cmd.uid = cpu_to_le32(uid);

 IWL_DEBUG_SCAN(mvm, "Sending scan abort, uid %u\n", uid);

 ret = iwl_mvm_send_cmd_pdu(mvm,
       iwl_cmd_id(SCAN_ABORT_UMAC,
           IWL_ALWAYS_LONG_GROUP, 0),
       0, sizeof(cmd), &cmd);
 if (!ret)
  mvm->scan_uid_status[uid] = type << IWL_MVM_SCAN_STOPPING_SHIFT;

 return ret;
}
