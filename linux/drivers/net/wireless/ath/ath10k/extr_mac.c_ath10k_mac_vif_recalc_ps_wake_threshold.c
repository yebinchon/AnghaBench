
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ uapsd; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;
struct ath10k_vif {int vdev_id; TYPE_2__ u; struct ath10k* ar; } ;
struct ath10k {int conf_mutex; } ;


 int WMI_STA_PS_PARAM_TX_WAKE_THRESHOLD ;
 int WMI_STA_PS_TX_WAKE_THRESHOLD_ALWAYS ;
 int WMI_STA_PS_TX_WAKE_THRESHOLD_NEVER ;
 int ath10k_warn (struct ath10k*,char*,int ,int ,int) ;
 int ath10k_wmi_set_sta_ps_param (struct ath10k*,int ,int ,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ath10k_mac_vif_recalc_ps_wake_threshold(struct ath10k_vif *arvif)
{
 struct ath10k *ar = arvif->ar;
 u32 param;
 u32 value;
 int ret;

 lockdep_assert_held(&arvif->ar->conf_mutex);

 if (arvif->u.sta.uapsd)
  value = WMI_STA_PS_TX_WAKE_THRESHOLD_NEVER;
 else
  value = WMI_STA_PS_TX_WAKE_THRESHOLD_ALWAYS;

 param = WMI_STA_PS_PARAM_TX_WAKE_THRESHOLD;
 ret = ath10k_wmi_set_sta_ps_param(ar, arvif->vdev_id, param, value);
 if (ret) {
  ath10k_warn(ar, "failed to submit ps wake threshold %u on vdev %i: %d\n",
       value, arvif->vdev_id, ret);
  return ret;
 }

 return 0;
}
