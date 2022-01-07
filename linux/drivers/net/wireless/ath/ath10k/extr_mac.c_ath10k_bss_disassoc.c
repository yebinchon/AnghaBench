
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta_vht_cap {int dummy; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k_vif {int def_wep_key_idx; int is_up; int connection_loss_work; int vdev_id; int bssid; } ;
struct ath10k {int conf_mutex; } ;


 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ) ;
 int ath10k_mac_vif_recalc_txbf (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta_vht_cap) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ath10k_wmi_vdev_down (struct ath10k*,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void ath10k_bss_disassoc(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif)
{
 struct ath10k *ar = hw->priv;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 struct ieee80211_sta_vht_cap vht_cap = {};
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac vdev %i disassoc bssid %pM\n",
     arvif->vdev_id, arvif->bssid);

 ret = ath10k_wmi_vdev_down(ar, arvif->vdev_id);
 if (ret)
  ath10k_warn(ar, "failed to down vdev %i: %d\n",
       arvif->vdev_id, ret);

 arvif->def_wep_key_idx = -1;

 ret = ath10k_mac_vif_recalc_txbf(ar, vif, vht_cap);
 if (ret) {
  ath10k_warn(ar, "failed to recalc txbf for vdev %i: %d\n",
       arvif->vdev_id, ret);
  return;
 }

 arvif->is_up = 0;

 cancel_delayed_work_sync(&arvif->connection_loss_work);
}
