
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_channel {int dummy; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct TYPE_4__ {int svc_map; } ;
struct ath10k {int bss_survey_done; TYPE_1__ scan; struct ieee80211_channel* rx_channel; TYPE_2__ wmi; int conf_mutex; } ;
typedef enum wmi_bss_survey_req_type { ____Placeholder_wmi_bss_survey_req_type } wmi_bss_survey_req_type ;


 int ATH10K_DBG_MAC ;
 scalar_t__ ATH10K_SCAN_IDLE ;
 int HZ ;
 int WMI_BSS_SURVEY_REQ_TYPE_READ_CLEAR ;
 int WMI_SERVICE_BSS_CHANNEL_INFO_64 ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_warn (struct ath10k*,char*) ;
 int ath10k_wmi_pdev_bss_chan_info_request (struct ath10k*,int) ;
 int lockdep_assert_held (int *) ;
 int reinit_completion (int *) ;
 int test_bit (int ,int ) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static void
ath10k_mac_update_bss_chan_survey(struct ath10k *ar,
      struct ieee80211_channel *channel)
{
 int ret;
 enum wmi_bss_survey_req_type type = WMI_BSS_SURVEY_REQ_TYPE_READ_CLEAR;

 lockdep_assert_held(&ar->conf_mutex);

 if (!test_bit(WMI_SERVICE_BSS_CHANNEL_INFO_64, ar->wmi.svc_map) ||
     (ar->rx_channel != channel))
  return;

 if (ar->scan.state != ATH10K_SCAN_IDLE) {
  ath10k_dbg(ar, ATH10K_DBG_MAC, "ignoring bss chan info request while scanning..\n");
  return;
 }

 reinit_completion(&ar->bss_survey_done);

 ret = ath10k_wmi_pdev_bss_chan_info_request(ar, type);
 if (ret) {
  ath10k_warn(ar, "failed to send pdev bss chan info request\n");
  return;
 }

 ret = wait_for_completion_timeout(&ar->bss_survey_done, 3 * HZ);
 if (!ret) {
  ath10k_warn(ar, "bss channel survey timed out\n");
  return;
 }
}
