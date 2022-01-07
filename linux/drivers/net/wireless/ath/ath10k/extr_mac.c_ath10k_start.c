
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct wmi_bb_timing_cfg_arg {int member_0; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_8__ {int svc_map; TYPE_1__* pdev_param; } ;
struct ath10k {int state; int ani_enabled; int conf_mutex; int radar_conf_state; scalar_t__ num_started_vdevs; TYPE_4__ wmi; int dev_flags; TYPE_3__* running_fw; int cfg_rx_chainmask; int cfg_tx_chainmask; int mac_addr; int normal_mode_fw; } ;
struct TYPE_6__ {int fw_features; } ;
struct TYPE_7__ {TYPE_2__ fw_file; } ;
struct TYPE_5__ {int enable_btcoex; int peer_stats_update_period; int ani_enable; int arp_ac_override; int idle_ps_config; int burst_enable; int dynamic_bw; int pmf_qos; } ;


 int ATH10K_FIRMWARE_MODE_NORMAL ;
 int ATH10K_FLAG_BTCOEX ;
 int ATH10K_FW_FEATURE_BTCOEX_PARAM ;
 int ATH10K_FW_FEATURE_SUPPORTS_ADAPTIVE_CCA ;
 int ATH10K_RADAR_CONFIRMATION_IDLE ;






 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int PEER_DEFAULT_STATS_UPDATE_PERIOD ;
 int WARN_ON (int) ;
 int WMI_CCA_DETECT_LEVEL_AUTO ;
 int WMI_CCA_DETECT_MARGIN_AUTO ;
 int WMI_SERVICE_ADAPTIVE_OCS ;
 int WMI_SERVICE_BB_TIMING_CONFIG_SUPPORT ;
 int WMI_SERVICE_BURST ;
 int WMI_SERVICE_COEX_GPIO ;
 int WMI_SERVICE_SPOOF_MAC_SUPPORT ;
 int __ath10k_fetch_bb_timing_dt (struct ath10k*,struct wmi_bb_timing_cfg_arg*) ;
 int __ath10k_set_antenna (struct ath10k*,int ,int ) ;
 int ath10k_core_start (struct ath10k*,int ,int *) ;
 int ath10k_core_stop (struct ath10k*) ;
 int ath10k_drain_tx (struct ath10k*) ;
 int ath10k_err (struct ath10k*,char*,int) ;
 int ath10k_hif_power_down (struct ath10k*) ;
 int ath10k_hif_power_up (struct ath10k*,int ) ;
 scalar_t__ ath10k_peer_stats_enabled (struct ath10k*) ;
 int ath10k_regd_update (struct ath10k*) ;
 int ath10k_spectral_start (struct ath10k*) ;
 int ath10k_thermal_set_throttling (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_adaptive_qcs (struct ath10k*,int) ;
 int ath10k_wmi_pdev_bb_timing (struct ath10k*,struct wmi_bb_timing_cfg_arg*) ;
 int ath10k_wmi_pdev_enable_adaptive_cca (struct ath10k*,int,int ,int ) ;
 int ath10k_wmi_pdev_set_param (struct ath10k*,int ,int) ;
 int ath10k_wmi_scan_prob_req_oui (struct ath10k*,int ) ;
 int clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int ath10k_start(struct ieee80211_hw *hw)
{
 struct ath10k *ar = hw->priv;
 u32 param;
 int ret = 0;
 struct wmi_bb_timing_cfg_arg bb_timing = {0};






 ath10k_drain_tx(ar);

 mutex_lock(&ar->conf_mutex);

 switch (ar->state) {
 case 133:
  ar->state = 132;
  break;
 case 130:
  ar->state = 131;
  break;
 case 132:
 case 131:
 case 128:
  WARN_ON(1);
  ret = -EINVAL;
  goto err;
 case 129:
  ret = -EBUSY;
  goto err;
 }

 ret = ath10k_hif_power_up(ar, ATH10K_FIRMWARE_MODE_NORMAL);
 if (ret) {
  ath10k_err(ar, "Could not init hif: %d\n", ret);
  goto err_off;
 }

 ret = ath10k_core_start(ar, ATH10K_FIRMWARE_MODE_NORMAL,
    &ar->normal_mode_fw);
 if (ret) {
  ath10k_err(ar, "Could not init core: %d\n", ret);
  goto err_power_down;
 }

 param = ar->wmi.pdev_param->pmf_qos;
 ret = ath10k_wmi_pdev_set_param(ar, param, 1);
 if (ret) {
  ath10k_warn(ar, "failed to enable PMF QOS: %d\n", ret);
  goto err_core_stop;
 }

 param = ar->wmi.pdev_param->dynamic_bw;
 ret = ath10k_wmi_pdev_set_param(ar, param, 1);
 if (ret) {
  ath10k_warn(ar, "failed to enable dynamic BW: %d\n", ret);
  goto err_core_stop;
 }

 if (test_bit(WMI_SERVICE_SPOOF_MAC_SUPPORT, ar->wmi.svc_map)) {
  ret = ath10k_wmi_scan_prob_req_oui(ar, ar->mac_addr);
  if (ret) {
   ath10k_err(ar, "failed to set prob req oui: %i\n", ret);
   goto err_core_stop;
  }
 }

 if (test_bit(WMI_SERVICE_ADAPTIVE_OCS, ar->wmi.svc_map)) {
  ret = ath10k_wmi_adaptive_qcs(ar, 1);
  if (ret) {
   ath10k_warn(ar, "failed to enable adaptive qcs: %d\n",
        ret);
   goto err_core_stop;
  }
 }

 if (test_bit(WMI_SERVICE_BURST, ar->wmi.svc_map)) {
  param = ar->wmi.pdev_param->burst_enable;
  ret = ath10k_wmi_pdev_set_param(ar, param, 0);
  if (ret) {
   ath10k_warn(ar, "failed to disable burst: %d\n", ret);
   goto err_core_stop;
  }
 }

 param = ar->wmi.pdev_param->idle_ps_config;
 ret = ath10k_wmi_pdev_set_param(ar, param, 1);
 if (ret && ret != -EOPNOTSUPP) {
  ath10k_warn(ar, "failed to enable idle_ps_config: %d\n", ret);
  goto err_core_stop;
 }

 __ath10k_set_antenna(ar, ar->cfg_tx_chainmask, ar->cfg_rx_chainmask);
 param = ar->wmi.pdev_param->arp_ac_override;
 ret = ath10k_wmi_pdev_set_param(ar, param, 0);
 if (ret) {
  ath10k_warn(ar, "failed to set arp ac override parameter: %d\n",
       ret);
  goto err_core_stop;
 }

 if (test_bit(ATH10K_FW_FEATURE_SUPPORTS_ADAPTIVE_CCA,
       ar->running_fw->fw_file.fw_features)) {
  ret = ath10k_wmi_pdev_enable_adaptive_cca(ar, 1,
         WMI_CCA_DETECT_LEVEL_AUTO,
         WMI_CCA_DETECT_MARGIN_AUTO);
  if (ret) {
   ath10k_warn(ar, "failed to enable adaptive cca: %d\n",
        ret);
   goto err_core_stop;
  }
 }

 param = ar->wmi.pdev_param->ani_enable;
 ret = ath10k_wmi_pdev_set_param(ar, param, 1);
 if (ret) {
  ath10k_warn(ar, "failed to enable ani by default: %d\n",
       ret);
  goto err_core_stop;
 }

 ar->ani_enabled = 1;

 if (ath10k_peer_stats_enabled(ar)) {
  param = ar->wmi.pdev_param->peer_stats_update_period;
  ret = ath10k_wmi_pdev_set_param(ar, param,
      PEER_DEFAULT_STATS_UPDATE_PERIOD);
  if (ret) {
   ath10k_warn(ar,
        "failed to set peer stats period : %d\n",
        ret);
   goto err_core_stop;
  }
 }

 param = ar->wmi.pdev_param->enable_btcoex;
 if (test_bit(WMI_SERVICE_COEX_GPIO, ar->wmi.svc_map) &&
     test_bit(ATH10K_FW_FEATURE_BTCOEX_PARAM,
       ar->running_fw->fw_file.fw_features)) {
  ret = ath10k_wmi_pdev_set_param(ar, param, 0);
  if (ret) {
   ath10k_warn(ar,
        "failed to set btcoex param: %d\n", ret);
   goto err_core_stop;
  }
  clear_bit(ATH10K_FLAG_BTCOEX, &ar->dev_flags);
 }

 if (test_bit(WMI_SERVICE_BB_TIMING_CONFIG_SUPPORT, ar->wmi.svc_map)) {
  ret = __ath10k_fetch_bb_timing_dt(ar, &bb_timing);
  if (!ret) {
   ret = ath10k_wmi_pdev_bb_timing(ar, &bb_timing);
   if (ret) {
    ath10k_warn(ar,
         "failed to set bb timings: %d\n",
         ret);
    goto err_core_stop;
   }
  }
 }

 ar->num_started_vdevs = 0;
 ath10k_regd_update(ar);

 ath10k_spectral_start(ar);
 ath10k_thermal_set_throttling(ar);

 ar->radar_conf_state = ATH10K_RADAR_CONFIRMATION_IDLE;

 mutex_unlock(&ar->conf_mutex);
 return 0;

err_core_stop:
 ath10k_core_stop(ar);

err_power_down:
 ath10k_hif_power_down(ar);

err_off:
 ar->state = 133;

err:
 mutex_unlock(&ar->conf_mutex);
 return ret;
}
