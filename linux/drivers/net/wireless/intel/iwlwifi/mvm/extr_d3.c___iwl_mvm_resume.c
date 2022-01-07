
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_mvm {int status; int hw; int mutex; struct ieee80211_vif* keep_vif; scalar_t__ net_detect; TYPE_2__* trans; int fwrt; TYPE_1__* fw; } ;
struct ieee80211_vif {int dummy; } ;
typedef enum iwl_d3_status { ____Placeholder_iwl_d3_status } iwl_d3_status ;
struct TYPE_4__ {int status; } ;
struct TYPE_3__ {int ucode_capa; } ;


 int D0I3_END_CMD ;
 int IEEE80211_IFACE_ITER_NORMAL ;
 scalar_t__ IS_ERR_OR_NULL (struct ieee80211_vif*) ;
 int IWL_D3_STATUS_ALIVE ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int IWL_INFO (struct iwl_mvm*,char*) ;
 int IWL_MVM_SCAN_NETDETECT ;
 int IWL_MVM_STATUS_HW_RESTART_REQUESTED ;
 int IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG ;
 int IWL_UCODE_TLV_CAPA_D0I3_END_FIRST ;
 int STATUS_FW_ERROR ;
 int fw_has_capa (int *,int ) ;
 int ieee80211_iterate_active_interfaces_rtnl (int ,int ,int ,struct ieee80211_vif*) ;
 int iwl_dump_desc_assert ;
 int iwl_fw_dbg_collect_desc (int *,int *,int,int ) ;
 int iwl_fw_dbg_read_d3_debug_data (int *) ;
 scalar_t__ iwl_mvm_check_rt_status (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_d3_disconnect_iter ;
 int iwl_mvm_dump_nic_error_log (struct iwl_mvm*) ;
 int iwl_mvm_free_nd (struct iwl_mvm*) ;
 struct ieee80211_vif* iwl_mvm_get_bss_vif (struct iwl_mvm*) ;
 int iwl_mvm_ppag_send_cmd (struct iwl_mvm*) ;
 int iwl_mvm_query_netdetect_reasons (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_query_wakeup_reasons (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_sar_select_profile (struct iwl_mvm*,int,int) ;
 int iwl_mvm_scan_stop (struct iwl_mvm*,int ,int) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int ,int *) ;
 int iwl_mvm_update_changed_regdom (struct iwl_mvm*) ;
 int iwl_trans_d3_resume (TYPE_2__*,int*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int __iwl_mvm_resume(struct iwl_mvm *mvm, bool test)
{
 struct ieee80211_vif *vif = ((void*)0);
 int ret = 1;
 enum iwl_d3_status d3_status;
 bool keep = 0;
 bool unified_image = fw_has_capa(&mvm->fw->ucode_capa,
      IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG);
 bool d0i3_first = fw_has_capa(&mvm->fw->ucode_capa,
          IWL_UCODE_TLV_CAPA_D0I3_END_FIRST);

 mutex_lock(&mvm->mutex);


 vif = iwl_mvm_get_bss_vif(mvm);
 if (IS_ERR_OR_NULL(vif))
  goto err;

 iwl_fw_dbg_read_d3_debug_data(&mvm->fwrt);

 if (iwl_mvm_check_rt_status(mvm, vif)) {
  set_bit(STATUS_FW_ERROR, &mvm->trans->status);
  iwl_mvm_dump_nic_error_log(mvm);
  iwl_fw_dbg_collect_desc(&mvm->fwrt, &iwl_dump_desc_assert,
     0, 0);
  ret = 1;
  goto err;
 }

 ret = iwl_trans_d3_resume(mvm->trans, &d3_status, test, !unified_image);
 if (ret)
  goto err;

 if (d3_status != IWL_D3_STATUS_ALIVE) {
  IWL_INFO(mvm, "Device was reset during suspend\n");
  goto err;
 }

 if (d0i3_first) {
  ret = iwl_mvm_send_cmd_pdu(mvm, D0I3_END_CMD, 0, 0, ((void*)0));
  if (ret < 0) {
   IWL_ERR(mvm, "Failed to send D0I3_END_CMD first (%d)\n",
    ret);
   goto err;
  }
 }





 iwl_mvm_update_changed_regdom(mvm);


 iwl_mvm_ppag_send_cmd(mvm);

 if (!unified_image)

  iwl_mvm_sar_select_profile(mvm, 1, 1);

 if (mvm->net_detect) {






  if (unified_image)
   ret = iwl_mvm_scan_stop(mvm, IWL_MVM_SCAN_NETDETECT,
      0);

  iwl_mvm_query_netdetect_reasons(mvm, vif);

  goto out;
 } else {
  keep = iwl_mvm_query_wakeup_reasons(mvm, vif);





  goto out_iterate;
 }

err:
 iwl_mvm_free_nd(mvm);
 mutex_unlock(&mvm->mutex);

out_iterate:
 if (!test)
  ieee80211_iterate_active_interfaces_rtnl(mvm->hw,
   IEEE80211_IFACE_ITER_NORMAL,
   iwl_mvm_d3_disconnect_iter, keep ? vif : ((void*)0));

out:

 if (unified_image && !ret) {

  if (d0i3_first)
   return 0;

  ret = iwl_mvm_send_cmd_pdu(mvm, D0I3_END_CMD, 0, 0, ((void*)0));
  if (!ret)
   return 0;
 }






 set_bit(IWL_MVM_STATUS_HW_RESTART_REQUESTED, &mvm->status);

 return 1;
}
