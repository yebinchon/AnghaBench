
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct htt_rx_delba {int info0; } ;
struct htt_resp {struct htt_rx_delba rx_delba; } ;
struct ath10k_vif {int vif; } ;
struct ath10k_peer {int addr; int vdev_id; } ;
struct ath10k {int data_lock; } ;


 int ATH10K_DBG_HTT ;
 int HTT_RX_BA_INFO0_PEER_ID ;
 int HTT_RX_BA_INFO0_TID ;
 int MS (int ,int ) ;
 int __le16_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ) ;
 struct ath10k_vif* ath10k_get_arvif (struct ath10k*,int ) ;
 struct ath10k_peer* ath10k_peer_find_by_id (struct ath10k*,int ) ;
 int ath10k_warn (struct ath10k*,char*,int ) ;
 int ieee80211_stop_rx_ba_session_offl (int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath10k_htt_rx_delba(struct ath10k *ar, struct htt_resp *resp)
{
 struct htt_rx_delba *ev = &resp->rx_delba;
 struct ath10k_peer *peer;
 struct ath10k_vif *arvif;
 u16 info0, tid, peer_id;

 info0 = __le16_to_cpu(ev->info0);
 tid = MS(info0, HTT_RX_BA_INFO0_TID);
 peer_id = MS(info0, HTT_RX_BA_INFO0_PEER_ID);

 ath10k_dbg(ar, ATH10K_DBG_HTT,
     "htt rx delba tid %hu peer_id %hu\n",
     tid, peer_id);

 spin_lock_bh(&ar->data_lock);
 peer = ath10k_peer_find_by_id(ar, peer_id);
 if (!peer) {
  ath10k_warn(ar, "received addba event for invalid peer_id: %hu\n",
       peer_id);
  spin_unlock_bh(&ar->data_lock);
  return;
 }

 arvif = ath10k_get_arvif(ar, peer->vdev_id);
 if (!arvif) {
  ath10k_warn(ar, "received addba event for invalid vdev_id: %u\n",
       peer->vdev_id);
  spin_unlock_bh(&ar->data_lock);
  return;
 }

 ath10k_dbg(ar, ATH10K_DBG_HTT,
     "htt rx stop rx ba session sta %pM tid %hu\n",
     peer->addr, tid);

 ieee80211_stop_rx_ba_session_offl(arvif->vif, peer->addr, tid);
 spin_unlock_bh(&ar->data_lock);
}
