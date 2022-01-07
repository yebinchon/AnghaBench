
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_vif {int fw_vif_idx; int flags; } ;
struct ath6kl {size_t ctrl_ep; int event_wq; scalar_t__* tx_pending; int wmi; } ;


 int ATH6KL_HOST_MODE_ASLEEP ;
 int ETIMEDOUT ;
 int HOST_SLEEP_MODE_CMD_PROCESSED ;
 int WMI_TIMEOUT ;
 int ath6kl_warn (char*,...) ;
 int ath6kl_wmi_set_host_sleep_mode_cmd (int ,int ,int ) ;
 int clear_bit (int ,int *) ;
 int is_ctrl_ep_empty (struct ath6kl*) ;
 int is_hsleep_mode_procsed (struct ath6kl_vif*) ;
 int wait_event_interruptible_timeout (int ,int ,int ) ;

__attribute__((used)) static int ath6kl_cfg80211_host_sleep(struct ath6kl *ar, struct ath6kl_vif *vif)
{
 int ret, left;

 clear_bit(HOST_SLEEP_MODE_CMD_PROCESSED, &vif->flags);

 ret = ath6kl_wmi_set_host_sleep_mode_cmd(ar->wmi, vif->fw_vif_idx,
       ATH6KL_HOST_MODE_ASLEEP);
 if (ret)
  return ret;

 left = wait_event_interruptible_timeout(ar->event_wq,
      is_hsleep_mode_procsed(vif),
      WMI_TIMEOUT);
 if (left == 0) {
  ath6kl_warn("timeout, didn't get host sleep cmd processed event\n");
  ret = -ETIMEDOUT;
 } else if (left < 0) {
  ath6kl_warn("error while waiting for host sleep cmd processed event %d\n",
       left);
  ret = left;
 }

 if (ar->tx_pending[ar->ctrl_ep]) {
  left = wait_event_interruptible_timeout(ar->event_wq,
       is_ctrl_ep_empty(ar),
       WMI_TIMEOUT);
  if (left == 0) {
   ath6kl_warn("clear wmi ctrl data timeout\n");
   ret = -ETIMEDOUT;
  } else if (left < 0) {
   ath6kl_warn("clear wmi ctrl data failed: %d\n", left);
   ret = left;
  }
 }

 return ret;
}
