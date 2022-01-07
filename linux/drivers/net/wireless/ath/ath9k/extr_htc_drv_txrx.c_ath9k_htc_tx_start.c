
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct TYPE_3__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int frame_control; } ;
struct ath9k_htc_vif {size_t index; } ;
struct ath9k_htc_sta {size_t index; } ;
struct ath9k_htc_priv {size_t mon_vif_idx; size_t* vif_sta_pos; int htc; TYPE_2__* ah; } ;
struct TYPE_4__ {int is_monitoring; } ;


 int EINVAL ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int XMIT ;
 int ath9k_htc_tx_data (struct ath9k_htc_priv*,struct ieee80211_vif*,struct sk_buff*,size_t,size_t,size_t,int) ;
 int ath9k_htc_tx_mgmt (struct ath9k_htc_priv*,struct ath9k_htc_vif*,struct sk_buff*,size_t,size_t,size_t) ;
 int ath9k_hw_common (TYPE_2__*) ;
 int ath_dbg (int ,int ,char*) ;
 int htc_send (int ,struct sk_buff*) ;
 scalar_t__ ieee80211_is_data (int ) ;

int ath9k_htc_tx_start(struct ath9k_htc_priv *priv,
         struct ieee80211_sta *sta,
         struct sk_buff *skb,
         u8 slot, bool is_cab)
{
 struct ieee80211_hdr *hdr;
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
 struct ieee80211_vif *vif = tx_info->control.vif;
 struct ath9k_htc_sta *ista;
 struct ath9k_htc_vif *avp = ((void*)0);
 u8 sta_idx, vif_idx;

 hdr = (struct ieee80211_hdr *) skb->data;





 if (vif) {
  avp = (struct ath9k_htc_vif *) vif->drv_priv;
  vif_idx = avp->index;
 } else {
  if (!priv->ah->is_monitoring) {
   ath_dbg(ath9k_hw_common(priv->ah), XMIT,
    "VIF is null, but no monitor interface !\n");
   return -EINVAL;
  }

  vif_idx = priv->mon_vif_idx;
 }




 if (sta) {
  ista = (struct ath9k_htc_sta *) sta->drv_priv;
  sta_idx = ista->index;
 } else {
  sta_idx = priv->vif_sta_pos[vif_idx];
 }

 if (ieee80211_is_data(hdr->frame_control))
  ath9k_htc_tx_data(priv, vif, skb,
      sta_idx, vif_idx, slot, is_cab);
 else
  ath9k_htc_tx_mgmt(priv, avp, skb,
      sta_idx, vif_idx, slot);


 return htc_send(priv->htc, skb);
}
