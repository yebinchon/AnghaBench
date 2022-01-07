
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath6kl_vif {int fw_vif_idx; } ;
struct ath6kl {TYPE_1__* wmi; int flag; } ;
struct TYPE_3__ {int pwr_mode; int saved_pwr_mode; } ;


 int ATH6KL_WOW_MODE_DISABLE ;
 int EIO ;
 int REC_POWER ;
 int WMI_READY ;
 int ath6kl_cfg80211_host_sleep (struct ath6kl*,struct ath6kl_vif*) ;
 int ath6kl_cfg80211_stop_all (struct ath6kl*) ;
 int ath6kl_err (char*) ;
 int ath6kl_tx_data_cleanup (struct ath6kl*) ;
 struct ath6kl_vif* ath6kl_vif_first (struct ath6kl*) ;
 int ath6kl_wmi_powermode_cmd (TYPE_1__*,int ,int ) ;
 int ath6kl_wmi_set_wow_mode_cmd (TYPE_1__*,int ,int ,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ath6kl_cfg80211_deepsleep_suspend(struct ath6kl *ar)
{
 struct ath6kl_vif *vif;
 int ret;

 vif = ath6kl_vif_first(ar);
 if (!vif)
  return -EIO;

 if (!test_bit(WMI_READY, &ar->flag)) {
  ath6kl_err("deepsleep failed as wmi is not ready\n");
  return -EIO;
 }

 ath6kl_cfg80211_stop_all(ar);


 ar->wmi->saved_pwr_mode = ar->wmi->pwr_mode;

 ret = ath6kl_wmi_powermode_cmd(ar->wmi, 0, REC_POWER);
 if (ret)
  return ret;


 ret = ath6kl_wmi_set_wow_mode_cmd(ar->wmi, vif->fw_vif_idx,
       ATH6KL_WOW_MODE_DISABLE,
       0, 0);
 if (ret)
  return ret;


 ath6kl_tx_data_cleanup(ar);

 ret = ath6kl_cfg80211_host_sleep(ar, vif);
 if (ret)
  return ret;

 return 0;
}
