
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
struct tx_mgmt_hdr {scalar_t__ key_type; int epid; void* keyix; void* cookie; scalar_t__ flags; scalar_t__ tidno; void* vif_idx; void* node_idx; int type; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_8__ {TYPE_3__* hw_key; } ;
struct ieee80211_tx_info {TYPE_4__ control; } ;
struct TYPE_5__ {int timestamp; } ;
struct TYPE_6__ {TYPE_1__ probe_resp; } ;
struct ieee80211_mgmt {TYPE_2__ u; } ;
struct ieee80211_hdr {int frame_control; } ;
struct ath9k_htc_vif {int tsfadjust; } ;
struct ath9k_htc_tx_ctl {scalar_t__ key_type; int epid; void* keyix; void* cookie; scalar_t__ flags; scalar_t__ tidno; void* vif_idx; void* node_idx; int type; } ;
struct ath9k_htc_priv {int mgmt_ep; } ;
typedef int mgmt_hdr ;
struct TYPE_7__ {void* hw_key_idx; } ;


 int ATH9K_HTC_MGMT ;
 scalar_t__ ATH9K_KEY_TYPE_CLEAR ;
 scalar_t__ ATH9K_TXKEYIX_INVALID ;
 struct tx_mgmt_hdr* HTC_SKB_CB (struct sk_buff*) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ ath9k_cmn_get_hw_crypto_keytype (struct sk_buff*) ;
 int ieee80211_is_probe_resp (int ) ;
 int memcpy (void**,void**,int) ;
 int memset (struct tx_mgmt_hdr*,int ,int) ;
 void** skb_push (struct sk_buff*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ath9k_htc_tx_mgmt(struct ath9k_htc_priv *priv,
         struct ath9k_htc_vif *avp,
         struct sk_buff *skb,
         u8 sta_idx, u8 vif_idx, u8 slot)
{
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
 struct ieee80211_mgmt *mgmt;
 struct ieee80211_hdr *hdr;
 struct tx_mgmt_hdr mgmt_hdr;
 struct ath9k_htc_tx_ctl *tx_ctl;
 u8 *tx_fhdr;

 tx_ctl = HTC_SKB_CB(skb);
 hdr = (struct ieee80211_hdr *) skb->data;

 memset(tx_ctl, 0, sizeof(*tx_ctl));
 memset(&mgmt_hdr, 0, sizeof(struct tx_mgmt_hdr));





 if (avp && unlikely(ieee80211_is_probe_resp(hdr->frame_control))) {
  mgmt = (struct ieee80211_mgmt *)skb->data;
  mgmt->u.probe_resp.timestamp = avp->tsfadjust;
 }

 tx_ctl->type = ATH9K_HTC_MGMT;

 mgmt_hdr.node_idx = sta_idx;
 mgmt_hdr.vif_idx = vif_idx;
 mgmt_hdr.tidno = 0;
 mgmt_hdr.flags = 0;
 mgmt_hdr.cookie = slot;

 mgmt_hdr.key_type = ath9k_cmn_get_hw_crypto_keytype(skb);
 if (mgmt_hdr.key_type == ATH9K_KEY_TYPE_CLEAR)
  mgmt_hdr.keyix = (u8) ATH9K_TXKEYIX_INVALID;
 else
  mgmt_hdr.keyix = tx_info->control.hw_key->hw_key_idx;

 tx_fhdr = skb_push(skb, sizeof(mgmt_hdr));
 memcpy(tx_fhdr, (u8 *) &mgmt_hdr, sizeof(mgmt_hdr));
 tx_ctl->epid = priv->mgmt_ep;
}
