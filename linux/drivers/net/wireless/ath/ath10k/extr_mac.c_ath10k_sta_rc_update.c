
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta {int addr; int bandwidth; int smps_mode; int rx_nss; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k_vif {int vdev_id; } ;
struct ath10k_sta {int bw; int smps; int changed; int update_wk; int nss; } ;
struct ath10k_peer {int dummy; } ;
struct ath10k {int data_lock; } ;


 int ATH10K_DBG_MAC ;
 int IEEE80211_RC_BW_CHANGED ;
 int IEEE80211_RC_NSS_CHANGED ;
 int IEEE80211_RC_SMPS_CHANGED ;
 int WMI_PEER_CHWIDTH_160MHZ ;
 int WMI_PEER_CHWIDTH_20MHZ ;
 int WMI_PEER_CHWIDTH_40MHZ ;
 int WMI_PEER_CHWIDTH_80MHZ ;
 int WMI_PEER_SMPS_DYNAMIC ;
 int WMI_PEER_SMPS_PS_NONE ;
 int WMI_PEER_SMPS_STATIC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int,int,int ,int) ;
 struct ath10k_peer* ath10k_peer_find (struct ath10k*,int,int) ;
 int ath10k_warn (struct ath10k*,char*,int,int) ;
 int ieee80211_queue_work (struct ieee80211_hw*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath10k_sta_rc_update(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ieee80211_sta *sta,
     u32 changed)
{
 struct ath10k *ar = hw->priv;
 struct ath10k_sta *arsta = (struct ath10k_sta *)sta->drv_priv;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 struct ath10k_peer *peer;
 u32 bw, smps;

 spin_lock_bh(&ar->data_lock);

 peer = ath10k_peer_find(ar, arvif->vdev_id, sta->addr);
 if (!peer) {
  spin_unlock_bh(&ar->data_lock);
  ath10k_warn(ar, "mac sta rc update failed to find peer %pM on vdev %i\n",
       sta->addr, arvif->vdev_id);
  return;
 }

 ath10k_dbg(ar, ATH10K_DBG_MAC,
     "mac sta rc update for %pM changed %08x bw %d nss %d smps %d\n",
     sta->addr, changed, sta->bandwidth, sta->rx_nss,
     sta->smps_mode);

 if (changed & IEEE80211_RC_BW_CHANGED) {
  bw = WMI_PEER_CHWIDTH_20MHZ;

  switch (sta->bandwidth) {
  case 130:
   bw = WMI_PEER_CHWIDTH_20MHZ;
   break;
  case 129:
   bw = WMI_PEER_CHWIDTH_40MHZ;
   break;
  case 128:
   bw = WMI_PEER_CHWIDTH_80MHZ;
   break;
  case 131:
   bw = WMI_PEER_CHWIDTH_160MHZ;
   break;
  default:
   ath10k_warn(ar, "Invalid bandwidth %d in rc update for %pM\n",
        sta->bandwidth, sta->addr);
   bw = WMI_PEER_CHWIDTH_20MHZ;
   break;
  }

  arsta->bw = bw;
 }

 if (changed & IEEE80211_RC_NSS_CHANGED)
  arsta->nss = sta->rx_nss;

 if (changed & IEEE80211_RC_SMPS_CHANGED) {
  smps = WMI_PEER_SMPS_PS_NONE;

  switch (sta->smps_mode) {
  case 136:
  case 133:
   smps = WMI_PEER_SMPS_PS_NONE;
   break;
  case 132:
   smps = WMI_PEER_SMPS_STATIC;
   break;
  case 135:
   smps = WMI_PEER_SMPS_DYNAMIC;
   break;
  case 134:
   ath10k_warn(ar, "Invalid smps %d in sta rc update for %pM\n",
        sta->smps_mode, sta->addr);
   smps = WMI_PEER_SMPS_PS_NONE;
   break;
  }

  arsta->smps = smps;
 }

 arsta->changed |= changed;

 spin_unlock_bh(&ar->data_lock);

 ieee80211_queue_work(hw, &arsta->update_wk);
}
