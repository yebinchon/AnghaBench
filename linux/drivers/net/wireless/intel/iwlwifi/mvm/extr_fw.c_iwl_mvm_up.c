
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_26__ {int cur_state; } ;
struct TYPE_22__ {int sta_id; } ;
struct TYPE_23__ {TYPE_4__ peer; } ;
struct TYPE_20__ {int conf; } ;
struct TYPE_18__ {TYPE_2__ dump; } ;
struct iwl_mvm {int ext_clock_valid; int dev; int status; void* hb_scan_type; void* scan_type; TYPE_9__* fw; TYPE_8__ cooling_dev; int * phy_ctxts; TYPE_7__* hw; int last_quota_cmd; TYPE_5__ tdls_cs; int * fw_id_to_mac_id; TYPE_11__* trans; int phy_db; TYPE_13__ fwrt; int mutex; } ;
struct ieee80211_supported_band {struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_19__ {scalar_t__ dest_tlv; } ;
struct TYPE_27__ {int ucode_capa; TYPE_1__ dbg; } ;
struct TYPE_25__ {TYPE_6__* wiphy; } ;
struct TYPE_24__ {struct ieee80211_supported_band** bands; } ;
struct TYPE_21__ {scalar_t__ device_family; } ;
struct TYPE_17__ {TYPE_3__* trans_cfg; } ;
struct TYPE_16__ {int init_dbg; } ;


 int ARRAY_SIZE (int *) ;
 int CTDP_CMD_OPERATION_START ;
 int ERFKILL ;
 int ERROR_RECOVERY_UPDATE_DB ;
 int FW_DBG_INVALID ;
 int FW_DBG_START_FROM_ALIVE ;
 int FW_DBG_TRIGGER_DRIVER ;
 int IWL_DEBUG_INFO (struct iwl_mvm*,char*) ;
 scalar_t__ IWL_DEVICE_FAMILY_22000 ;
 int IWL_ERR (struct iwl_mvm*,char*,...) ;
 int IWL_MVM_INVALID_STA ;
 int IWL_MVM_STATUS_HW_CTKILL ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 void* IWL_SCAN_TYPE_NOT_SET ;
 int IWL_UCODE_TLV_CAPA_DQA_SUPPORT ;
 int IWL_UCODE_TLV_CAPA_SET_LTR_GEN2 ;
 int IWL_UCODE_TLV_CAPA_UMAC_SCAN ;
 int NL80211_CHAN_NO_HT ;
 int NUM_NL80211_BANDS ;
 int NUM_PHY_CTX ;
 int RCU_INIT_POINTER (int ,int *) ;
 int WARN_ON (int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cfg80211_chandef_create (struct cfg80211_chan_def*,struct ieee80211_channel*,int ) ;
 scalar_t__ fw_has_capa (int *,int ) ;
 scalar_t__ iwl_acpi_get_eckv (int ,int *) ;
 int iwl_configure_rxq (struct iwl_mvm*) ;
 int iwl_fw_dbg_error_collect (TYPE_13__*,int ) ;
 int iwl_fw_start_dbg_conf (TYPE_13__*,int ) ;
 int iwl_get_shared_mem_conf (TYPE_13__*) ;
 int iwl_mvm_add_aux_sta (struct iwl_mvm*) ;
 int iwl_mvm_config_ltr (struct iwl_mvm*) ;
 int iwl_mvm_config_scan (struct iwl_mvm*) ;
 int iwl_mvm_ctdp_command (struct iwl_mvm*,int ,int ) ;
 int iwl_mvm_get_valid_tx_ant (struct iwl_mvm*) ;
 scalar_t__ iwl_mvm_has_new_rx_api (struct iwl_mvm*) ;
 int iwl_mvm_has_unified_ucode (struct iwl_mvm*) ;
 int iwl_mvm_init_mcc (struct iwl_mvm*) ;
 scalar_t__ iwl_mvm_is_ctdp_supported (struct iwl_mvm*) ;
 scalar_t__ iwl_mvm_is_tt_in_fw (struct iwl_mvm*) ;
 int iwl_mvm_leds_sync (struct iwl_mvm*) ;
 int iwl_mvm_load_rt_fw (struct iwl_mvm*) ;
 int iwl_mvm_phy_ctxt_add (struct iwl_mvm*,int *,struct cfg80211_chan_def*,int,int) ;
 int iwl_mvm_power_update_device (struct iwl_mvm*) ;
 int iwl_mvm_ppag_init (struct iwl_mvm*) ;
 int iwl_mvm_sar_geo_init (struct iwl_mvm*) ;
 int iwl_mvm_sar_get_wgds_table (struct iwl_mvm*) ;
 int iwl_mvm_sar_init (struct iwl_mvm*) ;
 int iwl_mvm_send_bt_init_conf (struct iwl_mvm*) ;
 int iwl_mvm_send_dqa_cmd (struct iwl_mvm*) ;
 int iwl_mvm_send_recovery_cmd (struct iwl_mvm*,int ) ;
 int iwl_mvm_send_temp_report_ths_cmd (struct iwl_mvm*) ;
 int iwl_mvm_sf_update (struct iwl_mvm*,int *,int) ;
 int iwl_mvm_stop_device (struct iwl_mvm*) ;
 int iwl_mvm_tt_tx_backoff (struct iwl_mvm*,int ) ;
 int iwl_send_phy_cfg_cmd (struct iwl_mvm*) ;
 int iwl_send_phy_db_data (int ) ;
 int iwl_send_rss_cfg_cmd (struct iwl_mvm*) ;
 int iwl_send_tx_ant_cfg (struct iwl_mvm*,int ) ;
 int iwl_trans_dbg_ini_valid (TYPE_11__*) ;
 int iwl_trans_start_hw (TYPE_11__*) ;
 TYPE_10__ iwlmvm_mod_params ;
 int lockdep_assert_held (int *) ;
 int memset (int *,int,int) ;
 scalar_t__ test_bit (int ,int *) ;

int iwl_mvm_up(struct iwl_mvm *mvm)
{
 int ret, i;
 struct ieee80211_channel *chan;
 struct cfg80211_chan_def chandef;
 struct ieee80211_supported_band *sband = ((void*)0);

 lockdep_assert_held(&mvm->mutex);

 ret = iwl_trans_start_hw(mvm->trans);
 if (ret)
  return ret;

 ret = iwl_mvm_load_rt_fw(mvm);
 if (ret) {
  IWL_ERR(mvm, "Failed to start RT ucode: %d\n", ret);
  if (ret != -ERFKILL)
   iwl_fw_dbg_error_collect(&mvm->fwrt,
       FW_DBG_TRIGGER_DRIVER);
  goto error;
 }

 iwl_get_shared_mem_conf(&mvm->fwrt);

 ret = iwl_mvm_sf_update(mvm, ((void*)0), 0);
 if (ret)
  IWL_ERR(mvm, "Failed to initialize Smart Fifo\n");

 if (!iwl_trans_dbg_ini_valid(mvm->trans)) {
  mvm->fwrt.dump.conf = FW_DBG_INVALID;

  if (mvm->fw->dbg.dest_tlv)
   mvm->fwrt.dump.conf = FW_DBG_START_FROM_ALIVE;
  iwl_fw_start_dbg_conf(&mvm->fwrt, FW_DBG_START_FROM_ALIVE);
 }

 ret = iwl_send_tx_ant_cfg(mvm, iwl_mvm_get_valid_tx_ant(mvm));
 if (ret)
  goto error;

 if (!iwl_mvm_has_unified_ucode(mvm)) {

  ret = iwl_send_phy_db_data(mvm->phy_db);
  if (ret)
   goto error;

  ret = iwl_send_phy_cfg_cmd(mvm);
  if (ret)
   goto error;
 }

 ret = iwl_mvm_send_bt_init_conf(mvm);
 if (ret)
  goto error;


 if (mvm->trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22000) {
  ret = iwl_configure_rxq(mvm);
  if (ret) {
   IWL_ERR(mvm, "Failed to configure RX queues: %d\n",
    ret);
   goto error;
  }
 }

 if (iwl_mvm_has_new_rx_api(mvm)) {
  ret = iwl_send_rss_cfg_cmd(mvm);
  if (ret) {
   IWL_ERR(mvm, "Failed to configure RSS queues: %d\n",
    ret);
   goto error;
  }
 }


 for (i = 0; i < ARRAY_SIZE(mvm->fw_id_to_mac_id); i++)
  RCU_INIT_POINTER(mvm->fw_id_to_mac_id[i], ((void*)0));

 mvm->tdls_cs.peer.sta_id = IWL_MVM_INVALID_STA;


 memset(&mvm->last_quota_cmd, 0xff, sizeof(mvm->last_quota_cmd));

 if (fw_has_capa(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_DQA_SUPPORT)) {
  ret = iwl_mvm_send_dqa_cmd(mvm);
  if (ret)
   goto error;
 }


 ret = iwl_mvm_add_aux_sta(mvm);
 if (ret)
  goto error;


 i = 0;
 while (!sband && i < NUM_NL80211_BANDS)
  sband = mvm->hw->wiphy->bands[i++];

 if (WARN_ON_ONCE(!sband))
  goto error;

 chan = &sband->channels[0];

 cfg80211_chandef_create(&chandef, chan, NL80211_CHAN_NO_HT);
 for (i = 0; i < NUM_PHY_CTX; i++) {





  ret = iwl_mvm_phy_ctxt_add(mvm, &mvm->phy_ctxts[i],
        &chandef, 1, 1);
  if (ret)
   goto error;
 }

 if (iwl_mvm_is_tt_in_fw(mvm)) {




  iwl_mvm_send_temp_report_ths_cmd(mvm);
 } else {

  iwl_mvm_tt_tx_backoff(mvm, 0);
 }
 if (!fw_has_capa(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_SET_LTR_GEN2))
  WARN_ON(iwl_mvm_config_ltr(mvm));

 ret = iwl_mvm_power_update_device(mvm);
 if (ret)
  goto error;





 if (!test_bit(IWL_MVM_STATUS_HW_CTKILL, &mvm->status)) {
  ret = iwl_mvm_init_mcc(mvm);
  if (ret)
   goto error;
 }

 if (fw_has_capa(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_UMAC_SCAN)) {
  mvm->scan_type = IWL_SCAN_TYPE_NOT_SET;
  mvm->hb_scan_type = IWL_SCAN_TYPE_NOT_SET;
  ret = iwl_mvm_config_scan(mvm);
  if (ret)
   goto error;
 }

 if (test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status))
  iwl_mvm_send_recovery_cmd(mvm, ERROR_RECOVERY_UPDATE_DB);

 if (iwl_acpi_get_eckv(mvm->dev, &mvm->ext_clock_valid))
  IWL_DEBUG_INFO(mvm, "ECKV table doesn't exist in BIOS\n");

 ret = iwl_mvm_ppag_init(mvm);
 if (ret)
  goto error;

 ret = iwl_mvm_sar_init(mvm);
 if (ret == 0) {
  ret = iwl_mvm_sar_geo_init(mvm);
 } else if (ret > 0 && !iwl_mvm_sar_get_wgds_table(mvm)) {






  IWL_ERR(mvm, "BIOS contains WGDS but no WRDS\n");
 }

 if (ret < 0)
  goto error;

 iwl_mvm_leds_sync(mvm);

 IWL_DEBUG_INFO(mvm, "RT uCode started.\n");
 return 0;
 error:
 if (!iwlmvm_mod_params.init_dbg || !ret)
  iwl_mvm_stop_device(mvm);
 return ret;
}
