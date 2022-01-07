
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ type; int txq; int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_5__ {int noa_data; } ;
struct TYPE_6__ {TYPE_1__ ap; } ;
struct ath10k_vif {long long vdev_id; scalar_t__ vdev_type; TYPE_2__ u; int ar; int list; int connection_loss_work; int ap_csa_work; } ;
struct ath10k_peer {struct ieee80211_vif* vif; } ;
struct TYPE_8__ {int tx_lock; } ;
struct TYPE_7__ {int svc_map; } ;
struct ath10k {long long free_vdev_map; int conf_mutex; TYPE_4__ htt; int * monitor_arvif; int data_lock; struct ath10k_peer** peer_map; int num_peers; int vdev_delete_done; TYPE_3__ wmi; } ;


 int ARRAY_SIZE (struct ath10k_peer**) ;
 int ATH10K_DBG_MAC ;
 int ATH10K_VDEV_DELETE_TIMEOUT_HZ ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 int WMI_SERVICE_SYNC_DELETE_CMDS ;
 scalar_t__ WMI_VDEV_TYPE_AP ;
 scalar_t__ WMI_VDEV_TYPE_IBSS ;
 int ath10k_dbg (struct ath10k*,int ,char*,long long) ;
 int ath10k_mac_txpower_recalc (struct ath10k*) ;
 int ath10k_mac_txq_unref (struct ath10k*,int ) ;
 int ath10k_mac_vif_beacon_cleanup (struct ath10k_vif*) ;
 int ath10k_mac_vif_tx_unlock_all (struct ath10k_vif*) ;
 int ath10k_monitor_recalc (struct ath10k*) ;
 int ath10k_peer_cleanup (struct ath10k*,long long) ;
 int ath10k_spectral_vif_stop (struct ath10k_vif*) ;
 int ath10k_wait_for_peer_delete_done (struct ath10k*,long long,int ) ;
 int ath10k_wait_for_peer_deleted (struct ath10k*,long long,int ) ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 int ath10k_wmi_peer_delete (int ,long long,int ) ;
 int ath10k_wmi_vdev_delete (struct ath10k*,long long) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int kfree (int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int ) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void ath10k_remove_interface(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif)
{
 struct ath10k *ar = hw->priv;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 struct ath10k_peer *peer;
 unsigned long time_left;
 int ret;
 int i;

 cancel_work_sync(&arvif->ap_csa_work);
 cancel_delayed_work_sync(&arvif->connection_loss_work);

 mutex_lock(&ar->conf_mutex);

 ret = ath10k_spectral_vif_stop(arvif);
 if (ret)
  ath10k_warn(ar, "failed to stop spectral for vdev %i: %d\n",
       arvif->vdev_id, ret);

 ar->free_vdev_map |= 1LL << arvif->vdev_id;
 spin_lock_bh(&ar->data_lock);
 list_del(&arvif->list);
 spin_unlock_bh(&ar->data_lock);

 if (arvif->vdev_type == WMI_VDEV_TYPE_AP ||
     arvif->vdev_type == WMI_VDEV_TYPE_IBSS) {
  ret = ath10k_wmi_peer_delete(arvif->ar, arvif->vdev_id,
          vif->addr);
  if (ret)
   ath10k_warn(ar, "failed to submit AP/IBSS self-peer removal on vdev %i: %d\n",
        arvif->vdev_id, ret);

  ath10k_wait_for_peer_delete_done(ar, arvif->vdev_id,
       vif->addr);
  kfree(arvif->u.ap.noa_data);
 }

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac vdev %i delete (remove interface)\n",
     arvif->vdev_id);

 ret = ath10k_wmi_vdev_delete(ar, arvif->vdev_id);
 if (ret)
  ath10k_warn(ar, "failed to delete WMI vdev %i: %d\n",
       arvif->vdev_id, ret);

 if (test_bit(WMI_SERVICE_SYNC_DELETE_CMDS, ar->wmi.svc_map)) {
  time_left = wait_for_completion_timeout(&ar->vdev_delete_done,
       ATH10K_VDEV_DELETE_TIMEOUT_HZ);
  if (time_left == 0) {
   ath10k_warn(ar, "Timeout in receiving vdev delete response\n");
   goto out;
  }
 }




 if (arvif->vdev_type == WMI_VDEV_TYPE_AP ||
     arvif->vdev_type == WMI_VDEV_TYPE_IBSS) {
  ret = ath10k_wait_for_peer_deleted(ar, arvif->vdev_id,
         vif->addr);
  if (ret)
   ath10k_warn(ar, "failed to remove AP self-peer on vdev %i: %d\n",
        arvif->vdev_id, ret);

  spin_lock_bh(&ar->data_lock);
  ar->num_peers--;
  spin_unlock_bh(&ar->data_lock);
 }

 spin_lock_bh(&ar->data_lock);
 for (i = 0; i < ARRAY_SIZE(ar->peer_map); i++) {
  peer = ar->peer_map[i];
  if (!peer)
   continue;

  if (peer->vif == vif) {
   ath10k_warn(ar, "found vif peer %pM entry on vdev %i after it was supposedly removed\n",
        vif->addr, arvif->vdev_id);
   peer->vif = ((void*)0);
  }
 }




 ath10k_mac_vif_beacon_cleanup(arvif);
 spin_unlock_bh(&ar->data_lock);

 ath10k_peer_cleanup(ar, arvif->vdev_id);
 ath10k_mac_txq_unref(ar, vif->txq);

 if (vif->type == NL80211_IFTYPE_MONITOR) {
  ar->monitor_arvif = ((void*)0);
  ret = ath10k_monitor_recalc(ar);
  if (ret)
   ath10k_warn(ar, "failed to recalc monitor: %d\n", ret);
 }

 ret = ath10k_mac_txpower_recalc(ar);
 if (ret)
  ath10k_warn(ar, "failed to recalc tx power: %d\n", ret);

 spin_lock_bh(&ar->htt.tx_lock);
 ath10k_mac_vif_tx_unlock_all(arvif);
 spin_unlock_bh(&ar->htt.tx_lock);

 ath10k_mac_txq_unref(ar, vif->txq);

out:
 mutex_unlock(&ar->conf_mutex);
}
