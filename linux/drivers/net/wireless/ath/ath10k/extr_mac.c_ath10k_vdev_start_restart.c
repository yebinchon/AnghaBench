
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int max_power; int max_reg_power; int max_antenna_gain; int chan_radar; int mode; int freq; scalar_t__ min_power; int band_center_freq2; int band_center_freq1; } ;
struct wmi_vdev_start_request_arg {int vdev_id; TYPE_6__ channel; int ssid_len; int ssid; int hidden_ssid; int bcn_intval; int dtim_period; } ;
struct cfg80211_chan_def {TYPE_3__* chan; int center_freq2; int center_freq1; } ;
struct TYPE_7__ {int hidden_ssid; int ssid_len; int ssid; } ;
struct TYPE_8__ {TYPE_1__ ap; } ;
struct ath10k_vif {scalar_t__ vdev_type; TYPE_5__* vif; TYPE_2__ u; int beacon_interval; int dtim_period; int vdev_id; struct ath10k* ar; } ;
struct ath10k {int num_started_vdevs; int vdev_delete_done; int vdev_setup_done; int conf_mutex; } ;
struct TYPE_10__ {int ssid_len; int ssid; } ;
struct TYPE_11__ {TYPE_4__ bss_conf; } ;
struct TYPE_9__ {int max_power; int max_reg_power; int max_antenna_gain; int flags; int center_freq; } ;


 int ATH10K_DBG_MAC ;
 int IEEE80211_CHAN_RADAR ;
 scalar_t__ WMI_VDEV_TYPE_AP ;
 scalar_t__ WMI_VDEV_TYPE_IBSS ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ) ;
 int ath10k_recalc_radar_detection (struct ath10k*) ;
 int ath10k_vdev_setup_sync (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int ,int,...) ;
 int ath10k_wmi_phymode_str (int ) ;
 int ath10k_wmi_vdev_restart (struct ath10k*,struct wmi_vdev_start_request_arg*) ;
 int ath10k_wmi_vdev_start (struct ath10k*,struct wmi_vdev_start_request_arg*) ;
 int chan_to_phymode (struct cfg80211_chan_def const*) ;
 int lockdep_assert_held (int *) ;
 int reinit_completion (int *) ;

__attribute__((used)) static int ath10k_vdev_start_restart(struct ath10k_vif *arvif,
         const struct cfg80211_chan_def *chandef,
         bool restart)
{
 struct ath10k *ar = arvif->ar;
 struct wmi_vdev_start_request_arg arg = {};
 int ret = 0;

 lockdep_assert_held(&ar->conf_mutex);

 reinit_completion(&ar->vdev_setup_done);
 reinit_completion(&ar->vdev_delete_done);

 arg.vdev_id = arvif->vdev_id;
 arg.dtim_period = arvif->dtim_period;
 arg.bcn_intval = arvif->beacon_interval;

 arg.channel.freq = chandef->chan->center_freq;
 arg.channel.band_center_freq1 = chandef->center_freq1;
 arg.channel.band_center_freq2 = chandef->center_freq2;
 arg.channel.mode = chan_to_phymode(chandef);

 arg.channel.min_power = 0;
 arg.channel.max_power = chandef->chan->max_power * 2;
 arg.channel.max_reg_power = chandef->chan->max_reg_power * 2;
 arg.channel.max_antenna_gain = chandef->chan->max_antenna_gain * 2;

 if (arvif->vdev_type == WMI_VDEV_TYPE_AP) {
  arg.ssid = arvif->u.ap.ssid;
  arg.ssid_len = arvif->u.ap.ssid_len;
  arg.hidden_ssid = arvif->u.ap.hidden_ssid;


  arg.channel.chan_radar =
   !!(chandef->chan->flags & IEEE80211_CHAN_RADAR);
 } else if (arvif->vdev_type == WMI_VDEV_TYPE_IBSS) {
  arg.ssid = arvif->vif->bss_conf.ssid;
  arg.ssid_len = arvif->vif->bss_conf.ssid_len;
 }

 ath10k_dbg(ar, ATH10K_DBG_MAC,
     "mac vdev %d start center_freq %d phymode %s\n",
     arg.vdev_id, arg.channel.freq,
     ath10k_wmi_phymode_str(arg.channel.mode));

 if (restart)
  ret = ath10k_wmi_vdev_restart(ar, &arg);
 else
  ret = ath10k_wmi_vdev_start(ar, &arg);

 if (ret) {
  ath10k_warn(ar, "failed to start WMI vdev %i: %d\n",
       arg.vdev_id, ret);
  return ret;
 }

 ret = ath10k_vdev_setup_sync(ar);
 if (ret) {
  ath10k_warn(ar,
       "failed to synchronize setup for vdev %i restart %d: %d\n",
       arg.vdev_id, restart, ret);
  return ret;
 }

 ar->num_started_vdevs++;
 ath10k_recalc_radar_detection(ar);

 return ret;
}
