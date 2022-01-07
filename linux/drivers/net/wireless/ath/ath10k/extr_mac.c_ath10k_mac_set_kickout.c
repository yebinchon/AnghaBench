
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_vif {int vdev_id; struct ath10k* ar; } ;
struct TYPE_6__ {TYPE_2__* vdev_param; TYPE_1__* pdev_param; } ;
struct ath10k {TYPE_3__ wmi; } ;
struct TYPE_5__ {int ap_keepalive_max_unresponsive_time_secs; int ap_keepalive_max_idle_inactive_time_secs; int ap_keepalive_min_idle_inactive_time_secs; } ;
struct TYPE_4__ {int sta_kickout_th; } ;


 int ATH10K_KEEPALIVE_MAX_IDLE ;
 int ATH10K_KEEPALIVE_MAX_UNRESPONSIVE ;
 int ATH10K_KEEPALIVE_MIN_IDLE ;
 int ATH10K_KICKOUT_THRESHOLD ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ath10k_wmi_pdev_set_param (struct ath10k*,int ,int ) ;
 int ath10k_wmi_vdev_set_param (struct ath10k*,int ,int ,int ) ;

__attribute__((used)) static int ath10k_mac_set_kickout(struct ath10k_vif *arvif)
{
 struct ath10k *ar = arvif->ar;
 u32 param;
 int ret;

 param = ar->wmi.pdev_param->sta_kickout_th;
 ret = ath10k_wmi_pdev_set_param(ar, param,
     ATH10K_KICKOUT_THRESHOLD);
 if (ret) {
  ath10k_warn(ar, "failed to set kickout threshold on vdev %i: %d\n",
       arvif->vdev_id, ret);
  return ret;
 }

 param = ar->wmi.vdev_param->ap_keepalive_min_idle_inactive_time_secs;
 ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, param,
     ATH10K_KEEPALIVE_MIN_IDLE);
 if (ret) {
  ath10k_warn(ar, "failed to set keepalive minimum idle time on vdev %i: %d\n",
       arvif->vdev_id, ret);
  return ret;
 }

 param = ar->wmi.vdev_param->ap_keepalive_max_idle_inactive_time_secs;
 ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, param,
     ATH10K_KEEPALIVE_MAX_IDLE);
 if (ret) {
  ath10k_warn(ar, "failed to set keepalive maximum idle time on vdev %i: %d\n",
       arvif->vdev_id, ret);
  return ret;
 }

 param = ar->wmi.vdev_param->ap_keepalive_max_unresponsive_time_secs;
 ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, param,
     ATH10K_KEEPALIVE_MAX_UNRESPONSIVE);
 if (ret) {
  ath10k_warn(ar, "failed to set keepalive maximum unresponsive time on vdev %i: %d\n",
       arvif->vdev_id, ret);
  return ret;
 }

 return 0;
}
