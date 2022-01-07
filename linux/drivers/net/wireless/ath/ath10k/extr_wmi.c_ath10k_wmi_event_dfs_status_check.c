
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_dfs_status_ev_arg {scalar_t__ status; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int radar_confirm; } ;
struct ath10k {TYPE_1__ wmi; } ;


 int ATH10K_DBG_REGULATORY ;
 scalar_t__ WMI_HW_RADAR_DETECTED ;
 scalar_t__ WMI_RADAR_DETECTION_FAIL ;
 int ath10k_dbg (struct ath10k*,int ,char*,scalar_t__) ;
 int ath10k_radar_detected (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_pull_dfs_status (struct ath10k*,struct sk_buff*,struct wmi_dfs_status_ev_arg*) ;
 int complete (int *) ;

__attribute__((used)) static void
ath10k_wmi_event_dfs_status_check(struct ath10k *ar, struct sk_buff *skb)
{
 struct wmi_dfs_status_ev_arg status_arg = {};
 int ret;

 ret = ath10k_wmi_pull_dfs_status(ar, skb, &status_arg);

 if (ret) {
  ath10k_warn(ar, "failed to parse dfs status event: %d\n", ret);
  return;
 }

 ath10k_dbg(ar, ATH10K_DBG_REGULATORY,
     "dfs status event received from fw: %d\n",
     status_arg.status);





 if (status_arg.status == WMI_HW_RADAR_DETECTED ||
     status_arg.status == WMI_RADAR_DETECTION_FAIL)
  ath10k_radar_detected(ar);
 complete(&ar->wmi.radar_confirm);
}
