
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int * bssid; } ;
struct ieee80211_vif {scalar_t__ type; int * addr; TYPE_1__ bss_conf; scalar_t__ drv_priv; } ;
struct ieee80211_sta {int * addr; scalar_t__ tdls; } ;
struct ieee80211_key_conf {scalar_t__ cipher; size_t keyidx; size_t hw_key_idx; int flags; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k_vif {scalar_t__ vdev_type; int def_wep_key_idx; int vdev_id; struct ieee80211_key_conf** wep_keys; scalar_t__ nohwcrypt; } ;
struct ath10k_peer {struct ieee80211_key_conf** keys; } ;
struct ath10k {int conf_mutex; int data_lock; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;


 int DISABLE_KEY ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int SET_KEY ;
 int WARN_ON (int) ;
 scalar_t__ WLAN_CIPHER_SUITE_AES_CMAC ;
 scalar_t__ WLAN_CIPHER_SUITE_BIP_CMAC_256 ;
 scalar_t__ WLAN_CIPHER_SUITE_BIP_GMAC_128 ;
 scalar_t__ WLAN_CIPHER_SUITE_BIP_GMAC_256 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ;
 int WMI_KEY_GROUP ;
 int WMI_KEY_PAIRWISE ;
 int WMI_KEY_TX_USAGE ;
 size_t WMI_MAX_KEY_INDEX ;
 int WMI_PEER_AUTHORIZE ;
 scalar_t__ WMI_VDEV_TYPE_STA ;
 int ath10k_clear_vdev_key (struct ath10k_vif*,struct ieee80211_key_conf*) ;
 int ath10k_install_key (struct ath10k_vif*,struct ieee80211_key_conf*,int,int const*,int ) ;
 int ath10k_mac_vif_update_wep_key (struct ath10k_vif*,struct ieee80211_key_conf*) ;
 struct ath10k_peer* ath10k_peer_find (struct ath10k*,int ,int const*) ;
 int ath10k_set_key_h_def_keyidx (struct ath10k*,struct ath10k_vif*,int,struct ieee80211_key_conf*) ;
 int ath10k_warn (struct ath10k*,char*,int const*,...) ;
 int ath10k_wmi_peer_set_param (struct ath10k*,int ,int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath10k_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
     struct ieee80211_vif *vif, struct ieee80211_sta *sta,
     struct ieee80211_key_conf *key)
{
 struct ath10k *ar = hw->priv;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 struct ath10k_peer *peer;
 const u8 *peer_addr;
 bool is_wep = key->cipher == WLAN_CIPHER_SUITE_WEP40 ||
        key->cipher == WLAN_CIPHER_SUITE_WEP104;
 int ret = 0;
 int ret2;
 u32 flags = 0;
 u32 flags2;


 if (key->cipher == WLAN_CIPHER_SUITE_AES_CMAC ||
     key->cipher == WLAN_CIPHER_SUITE_BIP_GMAC_128 ||
     key->cipher == WLAN_CIPHER_SUITE_BIP_GMAC_256 ||
     key->cipher == WLAN_CIPHER_SUITE_BIP_CMAC_256)
  return 1;

 if (arvif->nohwcrypt)
  return 1;

 if (key->keyidx > WMI_MAX_KEY_INDEX)
  return -ENOSPC;

 mutex_lock(&ar->conf_mutex);

 if (sta)
  peer_addr = sta->addr;
 else if (arvif->vdev_type == WMI_VDEV_TYPE_STA)
  peer_addr = vif->bss_conf.bssid;
 else
  peer_addr = vif->addr;

 key->hw_key_idx = key->keyidx;

 if (is_wep) {
  if (cmd == SET_KEY)
   arvif->wep_keys[key->keyidx] = key;
  else
   arvif->wep_keys[key->keyidx] = ((void*)0);
 }




 spin_lock_bh(&ar->data_lock);
 peer = ath10k_peer_find(ar, arvif->vdev_id, peer_addr);
 spin_unlock_bh(&ar->data_lock);

 if (!peer) {
  if (cmd == SET_KEY) {
   ath10k_warn(ar, "failed to install key for non-existent peer %pM\n",
        peer_addr);
   ret = -EOPNOTSUPP;
   goto exit;
  } else {

   goto exit;
  }
 }

 if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE)
  flags |= WMI_KEY_PAIRWISE;
 else
  flags |= WMI_KEY_GROUP;

 if (is_wep) {
  if (cmd == DISABLE_KEY)
   ath10k_clear_vdev_key(arvif, key);





  if (vif->type == NL80211_IFTYPE_ADHOC &&
      cmd == SET_KEY)
   ath10k_mac_vif_update_wep_key(arvif, key);







  if (cmd == SET_KEY && arvif->def_wep_key_idx == -1)
   flags |= WMI_KEY_TX_USAGE;
 }

 ret = ath10k_install_key(arvif, key, cmd, peer_addr, flags);
 if (ret) {
  WARN_ON(ret > 0);
  ath10k_warn(ar, "failed to install key for vdev %i peer %pM: %d\n",
       arvif->vdev_id, peer_addr, ret);
  goto exit;
 }




 if (is_wep && !sta && vif->type == NL80211_IFTYPE_STATION) {
  flags2 = flags;
  flags2 &= ~WMI_KEY_GROUP;
  flags2 |= WMI_KEY_PAIRWISE;

  ret = ath10k_install_key(arvif, key, cmd, peer_addr, flags2);
  if (ret) {
   WARN_ON(ret > 0);
   ath10k_warn(ar, "failed to install (ucast) key for vdev %i peer %pM: %d\n",
        arvif->vdev_id, peer_addr, ret);
   ret2 = ath10k_install_key(arvif, key, DISABLE_KEY,
        peer_addr, flags);
   if (ret2) {
    WARN_ON(ret2 > 0);
    ath10k_warn(ar, "failed to disable (mcast) key for vdev %i peer %pM: %d\n",
         arvif->vdev_id, peer_addr, ret2);
   }
   goto exit;
  }
 }

 ath10k_set_key_h_def_keyidx(ar, arvif, cmd, key);

 spin_lock_bh(&ar->data_lock);
 peer = ath10k_peer_find(ar, arvif->vdev_id, peer_addr);
 if (peer && cmd == SET_KEY)
  peer->keys[key->keyidx] = key;
 else if (peer && cmd == DISABLE_KEY)
  peer->keys[key->keyidx] = ((void*)0);
 else if (peer == ((void*)0))

  ath10k_warn(ar, "Peer %pM disappeared!\n", peer_addr);
 spin_unlock_bh(&ar->data_lock);

 if (sta && sta->tdls)
  ath10k_wmi_peer_set_param(ar, arvif->vdev_id, sta->addr,
       WMI_PEER_AUTHORIZE, 1);

exit:
 mutex_unlock(&ar->conf_mutex);
 return ret;
}
