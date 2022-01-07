
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_vif {int flags; struct ath6kl* ar; } ;
struct ath6kl {int flag; } ;


 int ATH6KL_DBG_WLAN_CFG ;
 int WLAN_ENABLED ;
 int WMI_READY ;
 int ath6kl_dbg (int ,char*) ;
 int ath6kl_err (char*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool ath6kl_cfg80211_ready(struct ath6kl_vif *vif)
{
 struct ath6kl *ar = vif->ar;

 if (!test_bit(WMI_READY, &ar->flag)) {
  ath6kl_err("wmi is not ready\n");
  return 0;
 }

 if (!test_bit(WLAN_ENABLED, &vif->flags)) {
  ath6kl_dbg(ATH6KL_DBG_WLAN_CFG, "wlan disabled\n");
  return 0;
 }

 return 1;
}
