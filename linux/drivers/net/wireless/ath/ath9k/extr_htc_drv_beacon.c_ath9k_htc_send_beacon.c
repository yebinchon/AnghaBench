
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct tx_beacon_header {int vif_index; int epid; int type; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_tx_info {int flags; } ;
struct TYPE_5__ {int timestamp; } ;
struct TYPE_6__ {TYPE_2__ beacon; } ;
struct ieee80211_mgmt {TYPE_3__ u; } ;
struct ieee80211_hdr {int seq_ctrl; } ;
struct ath_common {int op_flags; } ;
struct ath9k_htc_vif {int seq_no; int index; int tsfadjust; } ;
struct ath9k_htc_tx_ctl {int vif_index; int epid; int type; } ;
struct TYPE_4__ {struct ieee80211_vif** bslot; } ;
struct ath9k_htc_priv {int beacon_lock; int htc; int beacon_ep; int hw; TYPE_1__ beacon; int ah; } ;
typedef int beacon_hdr ;


 int ATH9K_HTC_BEACON ;
 int ATH_OP_SCANNING ;
 int BSTUCK ;
 int ENOMEM ;
 struct tx_beacon_header* HTC_SKB_CB (struct sk_buff*) ;
 int IEEE80211_SCTL_FRAG ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_ASSIGN_SEQ ;
 int ath9k_htc_csa_is_finished (struct ath9k_htc_priv*) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int cpu_to_le16 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int htc_send (int ,struct sk_buff*) ;
 struct sk_buff* ieee80211_beacon_get (int ,struct ieee80211_vif*) ;
 int memcpy (int *,int *,int) ;
 int memset (struct tx_beacon_header*,int ,int) ;
 int * skb_push (struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ath9k_htc_send_beacon(struct ath9k_htc_priv *priv,
      int slot)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ieee80211_vif *vif;
 struct ath9k_htc_vif *avp;
 struct tx_beacon_header beacon_hdr;
 struct ath9k_htc_tx_ctl *tx_ctl;
 struct ieee80211_tx_info *info;
 struct ieee80211_mgmt *mgmt;
 struct sk_buff *beacon;
 u8 *tx_fhdr;
 int ret;

 memset(&beacon_hdr, 0, sizeof(struct tx_beacon_header));

 spin_lock_bh(&priv->beacon_lock);

 vif = priv->beacon.bslot[slot];
 avp = (struct ath9k_htc_vif *)vif->drv_priv;

 if (unlikely(test_bit(ATH_OP_SCANNING, &common->op_flags))) {
  spin_unlock_bh(&priv->beacon_lock);
  return;
 }


 beacon = ieee80211_beacon_get(priv->hw, vif);
 if (!beacon) {
  spin_unlock_bh(&priv->beacon_lock);
  return;
 }





 mgmt = (struct ieee80211_mgmt *)beacon->data;
 mgmt->u.beacon.timestamp = avp->tsfadjust;

 info = IEEE80211_SKB_CB(beacon);
 if (info->flags & IEEE80211_TX_CTL_ASSIGN_SEQ) {
  struct ieee80211_hdr *hdr =
   (struct ieee80211_hdr *) beacon->data;
  avp->seq_no += 0x10;
  hdr->seq_ctrl &= cpu_to_le16(IEEE80211_SCTL_FRAG);
  hdr->seq_ctrl |= cpu_to_le16(avp->seq_no);
 }

 tx_ctl = HTC_SKB_CB(beacon);
 memset(tx_ctl, 0, sizeof(*tx_ctl));

 tx_ctl->type = ATH9K_HTC_BEACON;
 tx_ctl->epid = priv->beacon_ep;

 beacon_hdr.vif_index = avp->index;
 tx_fhdr = skb_push(beacon, sizeof(beacon_hdr));
 memcpy(tx_fhdr, (u8 *) &beacon_hdr, sizeof(beacon_hdr));

 ret = htc_send(priv->htc, beacon);
 if (ret != 0) {
  if (ret == -ENOMEM) {
   ath_dbg(common, BSTUCK,
    "Failed to send beacon, no free TX buffer\n");
  }
  dev_kfree_skb_any(beacon);
 }

 spin_unlock_bh(&priv->beacon_lock);

 ath9k_htc_csa_is_finished(priv);
}
