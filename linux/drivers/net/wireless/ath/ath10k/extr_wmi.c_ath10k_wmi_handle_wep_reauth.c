
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int* data; unsigned int len; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_hdr {int frame_control; } ;
struct ath10k {int data_lock; } ;


 int ATH10K_DBG_MAC ;
 unsigned int IEEE80211_WEP_IV_LEN ;
 int RX_FLAG_DECRYPTED ;
 int WEP_KEYID_SHIFT ;
 int ath10k_dbg (struct ath10k*,int ,char*,int*) ;
 int ath10k_mac_is_peer_wep_key_set (struct ath10k*,int*,int) ;
 int* ieee80211_get_SA (struct ieee80211_hdr*) ;
 int ieee80211_has_protected (int ) ;
 unsigned int ieee80211_hdrlen (int ) ;
 int ieee80211_is_auth (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath10k_wmi_handle_wep_reauth(struct ath10k *ar,
      struct sk_buff *skb,
      struct ieee80211_rx_status *status)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 unsigned int hdrlen;
 bool peer_key;
 u8 *addr, keyidx;

 if (!ieee80211_is_auth(hdr->frame_control) ||
     !ieee80211_has_protected(hdr->frame_control))
  return;

 hdrlen = ieee80211_hdrlen(hdr->frame_control);
 if (skb->len < (hdrlen + IEEE80211_WEP_IV_LEN))
  return;

 keyidx = skb->data[hdrlen + (IEEE80211_WEP_IV_LEN - 1)] >> WEP_KEYID_SHIFT;
 addr = ieee80211_get_SA(hdr);

 spin_lock_bh(&ar->data_lock);
 peer_key = ath10k_mac_is_peer_wep_key_set(ar, addr, keyidx);
 spin_unlock_bh(&ar->data_lock);

 if (peer_key) {
  ath10k_dbg(ar, ATH10K_DBG_MAC,
      "mac wep key present for peer %pM\n", addr);
  status->flag |= RX_FLAG_DECRYPTED;
 }
}
