
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_mvm {int notif_wait; TYPE_1__* fw; int mutex; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int ARRAY_SIZE (int const*) ;
 int HZ ;
 int IWL_DEBUG_SCAN (struct iwl_mvm*,char*,int) ;
 int IWL_UCODE_TLV_CAPA_UMAC_SCAN ;


 scalar_t__ fw_has_capa (int *,int ) ;
 int iwl_init_notification_wait (int *,struct iwl_notification_wait*,int const*,int ,int *,int *) ;
 int iwl_mvm_lmac_scan_abort (struct iwl_mvm*) ;
 int iwl_mvm_umac_scan_abort (struct iwl_mvm*,int) ;
 int iwl_remove_notification (int *,struct iwl_notification_wait*) ;
 int iwl_wait_notification (int *,struct iwl_notification_wait*,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int iwl_mvm_scan_stop_wait(struct iwl_mvm *mvm, int type)
{
 struct iwl_notification_wait wait_scan_done;
 static const u16 scan_done_notif[] = { 129,
           128, };
 int ret;

 lockdep_assert_held(&mvm->mutex);

 iwl_init_notification_wait(&mvm->notif_wait, &wait_scan_done,
       scan_done_notif,
       ARRAY_SIZE(scan_done_notif),
       ((void*)0), ((void*)0));

 IWL_DEBUG_SCAN(mvm, "Preparing to stop scan, type %x\n", type);

 if (fw_has_capa(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_UMAC_SCAN))
  ret = iwl_mvm_umac_scan_abort(mvm, type);
 else
  ret = iwl_mvm_lmac_scan_abort(mvm);

 if (ret) {
  IWL_DEBUG_SCAN(mvm, "couldn't stop scan type %d\n", type);
  iwl_remove_notification(&mvm->notif_wait, &wait_scan_done);
  return ret;
 }

 return iwl_wait_notification(&mvm->notif_wait, &wait_scan_done,
         1 * HZ);
}
