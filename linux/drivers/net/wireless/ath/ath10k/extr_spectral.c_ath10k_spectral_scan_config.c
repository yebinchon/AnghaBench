
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wmi_vdev_spectral_conf_arg {int vdev_id; int scan_count; int scan_chn_mask; int scan_dbm_adj; int scan_bin_scale; int scan_rpt_mode; int scan_pwr_format; int scan_rssi_thr; int scan_rssi_rpt_mode; int scan_wb_rpt_mode; int scan_str_bin_thr; int scan_nb_tone_thr; int scan_init_delay; int scan_noise_floor_ref; int scan_restart_ena; int scan_gc_ena; int scan_fft_size; int scan_priority; int scan_period; } ;
struct ath10k_vif {int vdev_id; int spectral_enabled; } ;
struct TYPE_3__ {int fft_size; int count; } ;
struct TYPE_4__ {int mode; TYPE_1__ config; } ;
struct ath10k {TYPE_2__ spectral; int conf_mutex; } ;
typedef enum ath10k_spectral_mode { ____Placeholder_ath10k_spectral_mode } ath10k_spectral_mode ;


 int ENODEV ;
 int SPECTRAL_BACKGROUND ;
 int SPECTRAL_DISABLED ;
 int WMI_SPECTRAL_BIN_SCALE_DEFAULT ;
 int WMI_SPECTRAL_CHN_MASK_DEFAULT ;
 int WMI_SPECTRAL_COUNT_DEFAULT ;
 int WMI_SPECTRAL_DBM_ADJ_DEFAULT ;
 int WMI_SPECTRAL_ENABLE_CMD_DISABLE ;
 int WMI_SPECTRAL_GC_ENA_DEFAULT ;
 int WMI_SPECTRAL_INIT_DELAY_DEFAULT ;
 int WMI_SPECTRAL_NB_TONE_THR_DEFAULT ;
 int WMI_SPECTRAL_NOISE_FLOOR_REF_DEFAULT ;
 int WMI_SPECTRAL_PERIOD_DEFAULT ;
 int WMI_SPECTRAL_PRIORITY_DEFAULT ;
 int WMI_SPECTRAL_PWR_FORMAT_DEFAULT ;
 int WMI_SPECTRAL_RESTART_ENA_DEFAULT ;
 int WMI_SPECTRAL_RPT_MODE_DEFAULT ;
 int WMI_SPECTRAL_RSSI_RPT_MODE_DEFAULT ;
 int WMI_SPECTRAL_RSSI_THR_DEFAULT ;
 int WMI_SPECTRAL_STR_BIN_THR_DEFAULT ;
 int WMI_SPECTRAL_TRIGGER_CMD_CLEAR ;
 int WMI_SPECTRAL_WB_RPT_MODE_DEFAULT ;
 struct ath10k_vif* ath10k_get_spectral_vdev (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_vdev_spectral_conf (struct ath10k*,struct wmi_vdev_spectral_conf_arg*) ;
 int ath10k_wmi_vdev_spectral_enable (struct ath10k*,int,int ,int ) ;
 int lockdep_assert_held (int *) ;
 int max_t (int ,int,int ) ;
 int u8 ;

__attribute__((used)) static int ath10k_spectral_scan_config(struct ath10k *ar,
           enum ath10k_spectral_mode mode)
{
 struct wmi_vdev_spectral_conf_arg arg;
 struct ath10k_vif *arvif;
 int vdev_id, count, res = 0;

 lockdep_assert_held(&ar->conf_mutex);

 arvif = ath10k_get_spectral_vdev(ar);
 if (!arvif)
  return -ENODEV;

 vdev_id = arvif->vdev_id;

 arvif->spectral_enabled = (mode != SPECTRAL_DISABLED);
 ar->spectral.mode = mode;

 res = ath10k_wmi_vdev_spectral_enable(ar, vdev_id,
           WMI_SPECTRAL_TRIGGER_CMD_CLEAR,
           WMI_SPECTRAL_ENABLE_CMD_DISABLE);
 if (res < 0) {
  ath10k_warn(ar, "failed to enable spectral scan: %d\n", res);
  return res;
 }

 if (mode == SPECTRAL_DISABLED)
  return 0;

 if (mode == SPECTRAL_BACKGROUND)
  count = WMI_SPECTRAL_COUNT_DEFAULT;
 else
  count = max_t(u8, 1, ar->spectral.config.count);

 arg.vdev_id = vdev_id;
 arg.scan_count = count;
 arg.scan_period = WMI_SPECTRAL_PERIOD_DEFAULT;
 arg.scan_priority = WMI_SPECTRAL_PRIORITY_DEFAULT;
 arg.scan_fft_size = ar->spectral.config.fft_size;
 arg.scan_gc_ena = WMI_SPECTRAL_GC_ENA_DEFAULT;
 arg.scan_restart_ena = WMI_SPECTRAL_RESTART_ENA_DEFAULT;
 arg.scan_noise_floor_ref = WMI_SPECTRAL_NOISE_FLOOR_REF_DEFAULT;
 arg.scan_init_delay = WMI_SPECTRAL_INIT_DELAY_DEFAULT;
 arg.scan_nb_tone_thr = WMI_SPECTRAL_NB_TONE_THR_DEFAULT;
 arg.scan_str_bin_thr = WMI_SPECTRAL_STR_BIN_THR_DEFAULT;
 arg.scan_wb_rpt_mode = WMI_SPECTRAL_WB_RPT_MODE_DEFAULT;
 arg.scan_rssi_rpt_mode = WMI_SPECTRAL_RSSI_RPT_MODE_DEFAULT;
 arg.scan_rssi_thr = WMI_SPECTRAL_RSSI_THR_DEFAULT;
 arg.scan_pwr_format = WMI_SPECTRAL_PWR_FORMAT_DEFAULT;
 arg.scan_rpt_mode = WMI_SPECTRAL_RPT_MODE_DEFAULT;
 arg.scan_bin_scale = WMI_SPECTRAL_BIN_SCALE_DEFAULT;
 arg.scan_dbm_adj = WMI_SPECTRAL_DBM_ADJ_DEFAULT;
 arg.scan_chn_mask = WMI_SPECTRAL_CHN_MASK_DEFAULT;

 res = ath10k_wmi_vdev_spectral_conf(ar, &arg);
 if (res < 0) {
  ath10k_warn(ar, "failed to configure spectral scan: %d\n", res);
  return res;
 }

 return 0;
}
