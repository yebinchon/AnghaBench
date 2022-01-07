
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_bss_conf {int bssid; int enable_beacon; } ;
struct ath10k_vif {int is_up; int tx_seq_no; int vdev_id; int bssid; scalar_t__ aid; struct ath10k* ar; } ;
struct ath10k {int data_lock; int conf_mutex; } ;


 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 int ath10k_mac_vif_beacon_free (struct ath10k_vif*) ;
 int ath10k_mac_vif_fix_hidden_ssid (struct ath10k_vif*) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ath10k_wmi_vdev_down (struct ath10k*,int ) ;
 int ath10k_wmi_vdev_up (struct ath10k*,int ,scalar_t__,int ) ;
 int ether_addr_copy (int ,int ) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath10k_control_beaconing(struct ath10k_vif *arvif,
         struct ieee80211_bss_conf *info)
{
 struct ath10k *ar = arvif->ar;
 int ret = 0;

 lockdep_assert_held(&arvif->ar->conf_mutex);

 if (!info->enable_beacon) {
  ret = ath10k_wmi_vdev_down(ar, arvif->vdev_id);
  if (ret)
   ath10k_warn(ar, "failed to down vdev_id %i: %d\n",
        arvif->vdev_id, ret);

  arvif->is_up = 0;

  spin_lock_bh(&arvif->ar->data_lock);
  ath10k_mac_vif_beacon_free(arvif);
  spin_unlock_bh(&arvif->ar->data_lock);

  return;
 }

 arvif->tx_seq_no = 0x1000;

 arvif->aid = 0;
 ether_addr_copy(arvif->bssid, info->bssid);

 ret = ath10k_wmi_vdev_up(arvif->ar, arvif->vdev_id, arvif->aid,
     arvif->bssid);
 if (ret) {
  ath10k_warn(ar, "failed to bring up vdev %d: %i\n",
       arvif->vdev_id, ret);
  return;
 }

 arvif->is_up = 1;

 ret = ath10k_mac_vif_fix_hidden_ssid(arvif);
 if (ret) {
  ath10k_warn(ar, "failed to fix hidden ssid for vdev %i, expect trouble: %d\n",
       arvif->vdev_id, ret);
  return;
 }

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac vdev %d up\n", arvif->vdev_id);
}
