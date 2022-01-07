
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {int csa_active; } ;
struct ath10k_vif {scalar_t__ vdev_type; int is_up; struct ath10k* ar; struct ieee80211_vif* vif; } ;
struct TYPE_2__ {int svc_map; } ;
struct ath10k {TYPE_1__ wmi; int conf_mutex; } ;


 scalar_t__ WARN_ON (int) ;
 int WMI_SERVICE_BEACON_OFFLOAD ;
 scalar_t__ WMI_VDEV_TYPE_AP ;
 int ath10k_mac_setup_bcn_tmpl (struct ath10k_vif*) ;
 int ath10k_mac_setup_prb_tmpl (struct ath10k_vif*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ieee80211_csa_finish (struct ieee80211_vif*) ;
 int ieee80211_csa_is_complete (struct ieee80211_vif*) ;
 int ieee80211_csa_update_counter (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void ath10k_mac_vif_ap_csa_count_down(struct ath10k_vif *arvif)
{
 struct ath10k *ar = arvif->ar;
 struct ieee80211_vif *vif = arvif->vif;
 int ret;

 lockdep_assert_held(&arvif->ar->conf_mutex);

 if (WARN_ON(!test_bit(WMI_SERVICE_BEACON_OFFLOAD, ar->wmi.svc_map)))
  return;

 if (arvif->vdev_type != WMI_VDEV_TYPE_AP)
  return;

 if (!vif->csa_active)
  return;

 if (!arvif->is_up)
  return;

 if (!ieee80211_csa_is_complete(vif)) {
  ieee80211_csa_update_counter(vif);

  ret = ath10k_mac_setup_bcn_tmpl(arvif);
  if (ret)
   ath10k_warn(ar, "failed to update bcn tmpl during csa: %d\n",
        ret);

  ret = ath10k_mac_setup_prb_tmpl(arvif);
  if (ret)
   ath10k_warn(ar, "failed to update prb tmpl during csa: %d\n",
        ret);
 } else {
  ieee80211_csa_finish(vif);
 }
}
