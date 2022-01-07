
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan_radar; int max_power; int max_reg_power; int max_antenna_gain; scalar_t__ min_power; int mode; int band_center_freq2; int band_center_freq1; int freq; } ;
struct wmi_vdev_start_request_arg {int vdev_id; TYPE_1__ channel; } ;
struct ieee80211_channel {int flags; int max_power; int max_reg_power; int max_antenna_gain; int center_freq; } ;
struct cfg80211_chan_def {int center_freq2; int center_freq1; struct ieee80211_channel* chan; } ;
struct ath10k {int monitor_vdev_id; int mac_addr; int vdev_delete_done; int vdev_setup_done; int hw; int conf_mutex; } ;


 int ATH10K_DBG_MAC ;
 int ENOENT ;
 int IEEE80211_CHAN_RADAR ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int ath10k_mac_get_any_chandef_iter ;
 int ath10k_vdev_setup_sync (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int,int) ;
 int ath10k_wmi_vdev_start (struct ath10k*,struct wmi_vdev_start_request_arg*) ;
 int ath10k_wmi_vdev_stop (struct ath10k*,int) ;
 int ath10k_wmi_vdev_up (struct ath10k*,int,int ,int ) ;
 int chan_to_phymode (struct cfg80211_chan_def*) ;
 int ieee80211_iter_chan_contexts_atomic (int ,int ,struct cfg80211_chan_def**) ;
 int lockdep_assert_held (int *) ;
 int reinit_completion (int *) ;

__attribute__((used)) static int ath10k_monitor_vdev_start(struct ath10k *ar, int vdev_id)
{
 struct cfg80211_chan_def *chandef = ((void*)0);
 struct ieee80211_channel *channel = ((void*)0);
 struct wmi_vdev_start_request_arg arg = {};
 int ret = 0;

 lockdep_assert_held(&ar->conf_mutex);

 ieee80211_iter_chan_contexts_atomic(ar->hw,
         ath10k_mac_get_any_chandef_iter,
         &chandef);
 if (WARN_ON_ONCE(!chandef))
  return -ENOENT;

 channel = chandef->chan;

 arg.vdev_id = vdev_id;
 arg.channel.freq = channel->center_freq;
 arg.channel.band_center_freq1 = chandef->center_freq1;
 arg.channel.band_center_freq2 = chandef->center_freq2;




 arg.channel.mode = chan_to_phymode(chandef);
 arg.channel.chan_radar =
   !!(channel->flags & IEEE80211_CHAN_RADAR);

 arg.channel.min_power = 0;
 arg.channel.max_power = channel->max_power * 2;
 arg.channel.max_reg_power = channel->max_reg_power * 2;
 arg.channel.max_antenna_gain = channel->max_antenna_gain * 2;

 reinit_completion(&ar->vdev_setup_done);
 reinit_completion(&ar->vdev_delete_done);

 ret = ath10k_wmi_vdev_start(ar, &arg);
 if (ret) {
  ath10k_warn(ar, "failed to request monitor vdev %i start: %d\n",
       vdev_id, ret);
  return ret;
 }

 ret = ath10k_vdev_setup_sync(ar);
 if (ret) {
  ath10k_warn(ar, "failed to synchronize setup for monitor vdev %i start: %d\n",
       vdev_id, ret);
  return ret;
 }

 ret = ath10k_wmi_vdev_up(ar, vdev_id, 0, ar->mac_addr);
 if (ret) {
  ath10k_warn(ar, "failed to put up monitor vdev %i: %d\n",
       vdev_id, ret);
  goto vdev_stop;
 }

 ar->monitor_vdev_id = vdev_id;

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac monitor vdev %i started\n",
     ar->monitor_vdev_id);
 return 0;

vdev_stop:
 ret = ath10k_wmi_vdev_stop(ar, ar->monitor_vdev_id);
 if (ret)
  ath10k_warn(ar, "failed to stop monitor vdev %i after start failure: %d\n",
       ar->monitor_vdev_id, ret);

 return ret;
}
