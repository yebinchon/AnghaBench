
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_vdev_start_ev_arg {int status; } ;
struct sk_buff {int dummy; } ;
struct ath10k {int last_wmi_vdev_start_status; int vdev_setup_done; } ;


 int ATH10K_DBG_WMI ;
 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int WMI_VDEV_START_CHAN_INVALID ;
 int __le32_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_warn (struct ath10k*,char*,int,...) ;
 int ath10k_wmi_pull_vdev_start (struct ath10k*,struct sk_buff*,struct wmi_vdev_start_ev_arg*) ;
 int complete (int *) ;

void ath10k_wmi_event_vdev_start_resp(struct ath10k *ar, struct sk_buff *skb)
{
 struct wmi_vdev_start_ev_arg arg = {};
 int ret;
 u32 status;

 ath10k_dbg(ar, ATH10K_DBG_WMI, "WMI_VDEV_START_RESP_EVENTID\n");

 ar->last_wmi_vdev_start_status = 0;

 ret = ath10k_wmi_pull_vdev_start(ar, skb, &arg);
 if (ret) {
  ath10k_warn(ar, "failed to parse vdev start event: %d\n", ret);
  ar->last_wmi_vdev_start_status = ret;
  goto out;
 }

 status = __le32_to_cpu(arg.status);
 if (WARN_ON_ONCE(status)) {
  ath10k_warn(ar, "vdev-start-response reports status error: %d (%s)\n",
       status, (status == WMI_VDEV_START_CHAN_INVALID) ?
       "chan-invalid" : "unknown");



  ar->last_wmi_vdev_start_status = -EINVAL;
 }

out:
 complete(&ar->vdev_setup_done);
}
