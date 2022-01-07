
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_chan_def {int dummy; } ;
struct ath10k_vif {int vdev_id; int bssid; int aid; struct ath10k* ar; int vif; int is_up; int is_started; } ;
struct TYPE_2__ {int svc_map; } ;
struct ath10k {TYPE_1__ wmi; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int WMI_SERVICE_BEACON_OFFLOAD ;
 int ath10k_mac_setup_bcn_tmpl (struct ath10k_vif*) ;
 int ath10k_mac_setup_prb_tmpl (struct ath10k_vif*) ;
 int ath10k_mac_vif_chan (int ,struct cfg80211_chan_def*) ;
 int ath10k_vdev_restart (struct ath10k_vif*,struct cfg80211_chan_def*) ;
 int ath10k_warn (struct ath10k*,char*,int,...) ;
 int ath10k_wmi_vdev_down (struct ath10k*,int ) ;
 int ath10k_wmi_vdev_up (struct ath10k*,int ,int ,int ) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int ath10k_mac_vif_fix_hidden_ssid(struct ath10k_vif *arvif)
{
 struct ath10k *ar = arvif->ar;
 struct cfg80211_chan_def def;
 int ret;
 if (!test_bit(WMI_SERVICE_BEACON_OFFLOAD, ar->wmi.svc_map))
  return 0;

 if (WARN_ON(!arvif->is_started))
  return -EINVAL;

 if (WARN_ON(!arvif->is_up))
  return -EINVAL;

 if (WARN_ON(ath10k_mac_vif_chan(arvif->vif, &def)))
  return -EINVAL;

 ret = ath10k_wmi_vdev_down(ar, arvif->vdev_id);
 if (ret) {
  ath10k_warn(ar, "failed to bring down ap vdev %i: %d\n",
       arvif->vdev_id, ret);
  return ret;
 }





 ret = ath10k_mac_setup_bcn_tmpl(arvif);
 if (ret) {
  ath10k_warn(ar, "failed to update beacon template: %d\n", ret);
  return ret;
 }

 ret = ath10k_mac_setup_prb_tmpl(arvif);
 if (ret) {
  ath10k_warn(ar, "failed to update presp template: %d\n", ret);
  return ret;
 }

 ret = ath10k_vdev_restart(arvif, &def);
 if (ret) {
  ath10k_warn(ar, "failed to restart ap vdev %i: %d\n",
       arvif->vdev_id, ret);
  return ret;
 }

 ret = ath10k_wmi_vdev_up(arvif->ar, arvif->vdev_id, arvif->aid,
     arvif->bssid);
 if (ret) {
  ath10k_warn(ar, "failed to bring up ap vdev %i: %d\n",
       arvif->vdev_id, ret);
  return ret;
 }

 return 0;
}
