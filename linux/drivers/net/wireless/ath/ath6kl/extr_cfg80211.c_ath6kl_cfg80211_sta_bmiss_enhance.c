
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath6kl_vif {scalar_t__ nw_type; int fw_vif_idx; TYPE_1__* ar; } ;
struct TYPE_2__ {int wmi; int * fw_capabilities; int flag; } ;


 int ATH6KL_DBG_WLAN_CFG ;
 int ATH6KL_FW_CAPABILITY_BMISS_ENHANCE ;
 scalar_t__ INFRA_NETWORK ;
 scalar_t__ WARN_ON (int) ;
 int WMI_READY ;
 int ath6kl_dbg (int ,char*,char*) ;
 int ath6kl_err (char*,char*,int) ;
 int ath6kl_wmi_sta_bmiss_enhance_cmd (int ,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ath6kl_cfg80211_sta_bmiss_enhance(struct ath6kl_vif *vif,
           bool enable)
{
 int err;

 if (WARN_ON(!test_bit(WMI_READY, &vif->ar->flag)))
  return;

 if (vif->nw_type != INFRA_NETWORK)
  return;

 if (!test_bit(ATH6KL_FW_CAPABILITY_BMISS_ENHANCE,
        vif->ar->fw_capabilities))
  return;

 ath6kl_dbg(ATH6KL_DBG_WLAN_CFG, "%s fw bmiss enhance\n",
     enable ? "enable" : "disable");

 err = ath6kl_wmi_sta_bmiss_enhance_cmd(vif->ar->wmi,
            vif->fw_vif_idx, enable);
 if (err)
  ath6kl_err("failed to %s enhanced bmiss detection: %d\n",
      enable ? "enable" : "disable", err);
}
