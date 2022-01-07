
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct wmi_start_scan_arg {int n_channels; int burst_duration_ms; int scan_ctrl_flags; void* max_scan_time; void* dwell_time_passive; void* dwell_time_active; int * channels; int scan_id; int vdev_id; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ieee80211_channel {int center_freq; } ;
struct ath10k_vif {int vdev_id; } ;
struct TYPE_5__ {int state; int is_roc; int roc_notify; int timeout; int on_channel; int roc_freq; int vdev_id; int completed; int started; } ;
struct ath10k {int conf_mutex; TYPE_2__ scan; TYPE_3__* hw; int data_lock; } ;
typedef enum ieee80211_roc_type { ____Placeholder_ieee80211_roc_type } ieee80211_roc_type ;
typedef int arg ;
struct TYPE_6__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int max_remain_on_channel_duration; } ;



 int ATH10K_SCAN_ID ;



 int EBUSY ;
 int ETIMEDOUT ;
 int HZ ;
 int WMI_SCAN_FILTER_PROBE_REQ ;
 int WMI_SCAN_FLAG_PASSIVE ;
 scalar_t__ ath10k_mac_tdls_vif_stations_count (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int ath10k_scan_stop (struct ath10k*) ;
 int ath10k_start_scan (struct ath10k*,struct wmi_start_scan_arg*) ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 int ath10k_wmi_start_scan_init (struct ath10k*,struct wmi_start_scan_arg*) ;
 int ieee80211_queue_delayed_work (TYPE_3__*,int *,int ) ;
 int memset (struct wmi_start_scan_arg*,int ,int) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int ath10k_remain_on_channel(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_channel *chan,
        int duration,
        enum ieee80211_roc_type type)
{
 struct ath10k *ar = hw->priv;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 struct wmi_start_scan_arg arg;
 int ret = 0;
 u32 scan_time_msec;

 mutex_lock(&ar->conf_mutex);

 if (ath10k_mac_tdls_vif_stations_count(hw, vif) > 0) {
  ret = -EBUSY;
  goto exit;
 }

 spin_lock_bh(&ar->data_lock);
 switch (ar->scan.state) {
 case 130:
  reinit_completion(&ar->scan.started);
  reinit_completion(&ar->scan.completed);
  reinit_completion(&ar->scan.on_channel);
  ar->scan.state = 128;
  ar->scan.is_roc = 1;
  ar->scan.vdev_id = arvif->vdev_id;
  ar->scan.roc_freq = chan->center_freq;
  ar->scan.roc_notify = 1;
  ret = 0;
  break;
 case 128:
 case 129:
 case 131:
  ret = -EBUSY;
  break;
 }
 spin_unlock_bh(&ar->data_lock);

 if (ret)
  goto exit;

 scan_time_msec = ar->hw->wiphy->max_remain_on_channel_duration * 2;

 memset(&arg, 0, sizeof(arg));
 ath10k_wmi_start_scan_init(ar, &arg);
 arg.vdev_id = arvif->vdev_id;
 arg.scan_id = ATH10K_SCAN_ID;
 arg.n_channels = 1;
 arg.channels[0] = chan->center_freq;
 arg.dwell_time_active = scan_time_msec;
 arg.dwell_time_passive = scan_time_msec;
 arg.max_scan_time = scan_time_msec;
 arg.scan_ctrl_flags |= WMI_SCAN_FLAG_PASSIVE;
 arg.scan_ctrl_flags |= WMI_SCAN_FILTER_PROBE_REQ;
 arg.burst_duration_ms = duration;

 ret = ath10k_start_scan(ar, &arg);
 if (ret) {
  ath10k_warn(ar, "failed to start roc scan: %d\n", ret);
  spin_lock_bh(&ar->data_lock);
  ar->scan.state = 130;
  spin_unlock_bh(&ar->data_lock);
  goto exit;
 }

 ret = wait_for_completion_timeout(&ar->scan.on_channel, 3 * HZ);
 if (ret == 0) {
  ath10k_warn(ar, "failed to switch to channel for roc scan\n");

  ret = ath10k_scan_stop(ar);
  if (ret)
   ath10k_warn(ar, "failed to stop scan: %d\n", ret);

  ret = -ETIMEDOUT;
  goto exit;
 }

 ieee80211_queue_delayed_work(ar->hw, &ar->scan.timeout,
         msecs_to_jiffies(duration));

 ret = 0;
exit:
 mutex_unlock(&ar->conf_mutex);
 return ret;
}
