
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct iwl_nvm_access_complete_cmd {int init_flags; } ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_mvm {int rfkill_safe_init_done; int notif_wait; int * nvm_data; int fw; TYPE_2__* trans; int nvm_sections; scalar_t__ nvm_file_name; int fwrt; int mutex; } ;
struct iwl_init_extended_cfg_cmd {int init_flags; } ;
typedef int nvm_complete ;
typedef int init_cfg ;
struct TYPE_5__ {TYPE_1__* cfg; } ;
struct TYPE_4__ {scalar_t__ tx_with_siso_diversity; } ;


 int ARRAY_SIZE (int const*) ;
 int BIT (int ) ;
 int CMD_SEND_IN_RFKILL ;

 int INIT_EXTENDED_CFG_CMD ;
 scalar_t__ IS_ERR (int *) ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int IWL_FW_INI_TIME_POINT_AFTER_ALIVE ;
 int IWL_FW_INI_TIME_POINT_EARLY ;
 int IWL_INIT_NVM ;
 int IWL_INIT_PHY ;
 scalar_t__ IWL_MVM_PARSE_NVM ;
 int IWL_UCODE_REGULAR ;
 int MVM_UCODE_ALIVE_TIMEOUT ;
 int NVM_ACCESS_COMPLETE ;
 int PTR_ERR (int *) ;
 int REGULATORY_AND_NVM_GROUP ;
 int SYSTEM_GROUP ;
 int WIDE_ID (int ,int ) ;
 int cpu_to_le32 (int ) ;
 int iwl_dbg_tlv_time_point (int *,int ,int *) ;
 int * iwl_get_nvm (TYPE_2__*,int ) ;
 int iwl_init_notification_wait (int *,struct iwl_notification_wait*,int const*,int ,int ,int *) ;
 int iwl_mvm_load_nvm_to_nic (struct iwl_mvm*) ;
 int iwl_mvm_load_ucode_wait_alive (struct iwl_mvm*,int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_nvm_access_complete_cmd*) ;
 int iwl_nvm_init (struct iwl_mvm*) ;
 int iwl_read_external_nvm (TYPE_2__*,scalar_t__,int ) ;
 int iwl_remove_notification (int *,struct iwl_notification_wait*) ;
 int iwl_wait_init_complete ;
 int iwl_wait_notification (int *,struct iwl_notification_wait*,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int iwl_run_unified_mvm_ucode(struct iwl_mvm *mvm, bool read_nvm)
{
 struct iwl_notification_wait init_wait;
 struct iwl_nvm_access_complete_cmd nvm_complete = {};
 struct iwl_init_extended_cfg_cmd init_cfg = {
  .init_flags = cpu_to_le32(BIT(IWL_INIT_NVM)),
 };
 static const u16 init_complete[] = {
  128,
 };
 int ret;

 if (mvm->trans->cfg->tx_with_siso_diversity)
  init_cfg.init_flags |= cpu_to_le32(BIT(IWL_INIT_PHY));

 lockdep_assert_held(&mvm->mutex);

 mvm->rfkill_safe_init_done = 0;

 iwl_init_notification_wait(&mvm->notif_wait,
       &init_wait,
       init_complete,
       ARRAY_SIZE(init_complete),
       iwl_wait_init_complete,
       ((void*)0));

 iwl_dbg_tlv_time_point(&mvm->fwrt, IWL_FW_INI_TIME_POINT_EARLY, ((void*)0));


 ret = iwl_mvm_load_ucode_wait_alive(mvm, IWL_UCODE_REGULAR);
 if (ret) {
  IWL_ERR(mvm, "Failed to start RT ucode: %d\n", ret);
  goto error;
 }
 iwl_dbg_tlv_time_point(&mvm->fwrt, IWL_FW_INI_TIME_POINT_AFTER_ALIVE,
          ((void*)0));




 ret = iwl_mvm_send_cmd_pdu(mvm, WIDE_ID(SYSTEM_GROUP,
      INIT_EXTENDED_CFG_CMD),
       CMD_SEND_IN_RFKILL,
       sizeof(init_cfg), &init_cfg);
 if (ret) {
  IWL_ERR(mvm, "Failed to run init config command: %d\n",
   ret);
  goto error;
 }


 if (mvm->nvm_file_name) {
  iwl_read_external_nvm(mvm->trans, mvm->nvm_file_name,
          mvm->nvm_sections);
  iwl_mvm_load_nvm_to_nic(mvm);
 }

 if (IWL_MVM_PARSE_NVM && read_nvm) {
  ret = iwl_nvm_init(mvm);
  if (ret) {
   IWL_ERR(mvm, "Failed to read NVM: %d\n", ret);
   goto error;
  }
 }

 ret = iwl_mvm_send_cmd_pdu(mvm, WIDE_ID(REGULATORY_AND_NVM_GROUP,
      NVM_ACCESS_COMPLETE),
       CMD_SEND_IN_RFKILL,
       sizeof(nvm_complete), &nvm_complete);
 if (ret) {
  IWL_ERR(mvm, "Failed to run complete NVM access: %d\n",
   ret);
  goto error;
 }


 ret = iwl_wait_notification(&mvm->notif_wait, &init_wait,
        MVM_UCODE_ALIVE_TIMEOUT);
 if (ret)
  return ret;


 if (!IWL_MVM_PARSE_NVM && read_nvm) {
  mvm->nvm_data = iwl_get_nvm(mvm->trans, mvm->fw);
  if (IS_ERR(mvm->nvm_data)) {
   ret = PTR_ERR(mvm->nvm_data);
   mvm->nvm_data = ((void*)0);
   IWL_ERR(mvm, "Failed to read NVM: %d\n", ret);
   return ret;
  }
 }

 mvm->rfkill_safe_init_done = 1;

 return 0;

error:
 iwl_remove_notification(&mvm->notif_wait, &init_wait);
 return ret;
}
