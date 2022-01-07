
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iwl_mvm_reprobe {int work; int dev; } ;
struct TYPE_9__ {scalar_t__ cur_fw_img; } ;
struct iwl_mvm {scalar_t__ fw_restart; int hw; int status; TYPE_4__ fwrt; TYPE_3__* trans; int * error_recovery_buf; TYPE_2__* fw; scalar_t__ hw_registered; int notif_wait; } ;
struct TYPE_8__ {int status; int dev; } ;
struct TYPE_6__ {int error_log_size; int error_log_addr; } ;
struct TYPE_7__ {TYPE_1__ ucode_capa; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_MVM_STATUS_HW_RESTART_REQUESTED ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 scalar_t__ IWL_UCODE_REGULAR ;
 int STATUS_TRANS_DEAD ;
 int THIS_MODULE ;
 int ieee80211_restart_hw (int ) ;
 int iwl_abort_notification_waits (int *) ;
 int iwl_dbg_tlv_del_timers (TYPE_3__*) ;
 int iwl_fw_error_collect (TYPE_4__*) ;
 int iwl_mvm_report_scan_aborted (struct iwl_mvm*) ;
 int iwl_mvm_reprobe_wk ;
 int iwl_trans_read_mem_bytes (TYPE_3__*,int,int *,int) ;
 void* kzalloc (int,int ) ;
 int module_put (int ) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int try_module_get (int ) ;

void iwl_mvm_nic_restart(struct iwl_mvm *mvm, bool fw_error)
{
 iwl_abort_notification_waits(&mvm->notif_wait);
 iwl_dbg_tlv_del_timers(mvm->trans);
 iwl_mvm_report_scan_aborted(mvm);







 if (!mvm->fw_restart && fw_error) {
  iwl_fw_error_collect(&mvm->fwrt);
 } else if (test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status)) {
  struct iwl_mvm_reprobe *reprobe;

  IWL_ERR(mvm,
   "Firmware error during reconfiguration - reprobe!\n");






  if (!try_module_get(THIS_MODULE)) {
   IWL_ERR(mvm, "Module is being unloaded - abort\n");
   return;
  }

  reprobe = kzalloc(sizeof(*reprobe), GFP_ATOMIC);
  if (!reprobe) {
   module_put(THIS_MODULE);
   return;
  }
  reprobe->dev = mvm->trans->dev;
  INIT_WORK(&reprobe->work, iwl_mvm_reprobe_wk);
  schedule_work(&reprobe->work);
 } else if (test_bit(IWL_MVM_STATUS_HW_RESTART_REQUESTED,
       &mvm->status)) {
  IWL_ERR(mvm, "HW restart already requested, but not started\n");
 } else if (mvm->fwrt.cur_fw_img == IWL_UCODE_REGULAR &&
     mvm->hw_registered &&
     !test_bit(STATUS_TRANS_DEAD, &mvm->trans->status)) {
  if (mvm->fw->ucode_capa.error_log_size) {
   u32 src_size = mvm->fw->ucode_capa.error_log_size;
   u32 src_addr = mvm->fw->ucode_capa.error_log_addr;
   u8 *recover_buf = kzalloc(src_size, GFP_ATOMIC);

   if (recover_buf) {
    mvm->error_recovery_buf = recover_buf;
    iwl_trans_read_mem_bytes(mvm->trans,
        src_addr,
        recover_buf,
        src_size);
   }
  }

  iwl_fw_error_collect(&mvm->fwrt);

  if (fw_error && mvm->fw_restart > 0)
   mvm->fw_restart--;
  set_bit(IWL_MVM_STATUS_HW_RESTART_REQUESTED, &mvm->status);
  ieee80211_restart_hw(mvm->hw);
 }
}
