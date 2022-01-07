
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta {int addr; int wme; } ;
struct ath10k_vif {int vdev_id; int num_legacy_stations; } ;
struct ath10k {int conf_mutex; } ;


 int ath10k_clear_peer_keys (struct ath10k_vif*,int ) ;
 int ath10k_recalc_rtscts_prot (struct ath10k_vif*) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ath10k_station_disassoc(struct ath10k *ar,
       struct ieee80211_vif *vif,
       struct ieee80211_sta *sta)
{
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 int ret = 0;

 lockdep_assert_held(&ar->conf_mutex);

 if (!sta->wme) {
  arvif->num_legacy_stations--;
  ret = ath10k_recalc_rtscts_prot(arvif);
  if (ret) {
   ath10k_warn(ar, "failed to recalculate rts/cts prot for vdev %d: %d\n",
        arvif->vdev_id, ret);
   return ret;
  }
 }

 ret = ath10k_clear_peer_keys(arvif, sta->addr);
 if (ret) {
  ath10k_warn(ar, "failed to clear all peer wep keys for vdev %i: %d\n",
       arvif->vdev_id, ret);
  return ret;
 }

 return ret;
}
