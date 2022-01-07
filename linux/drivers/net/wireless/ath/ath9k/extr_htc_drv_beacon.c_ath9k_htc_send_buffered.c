
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
struct ath_common {int dummy; } ;
struct TYPE_4__ {int tx_lock; int queued_cnt; } ;
struct TYPE_3__ {struct ieee80211_vif** bslot; } ;
struct ath9k_htc_priv {int beacon_lock; int hw; TYPE_2__ tx; TYPE_1__ beacon; int ah; } ;


 int XMIT ;
 int ath9k_htc_tx_clear_slot (struct ath9k_htc_priv*,int) ;
 int ath9k_htc_tx_get_slot (struct ath9k_htc_priv*) ;
 int ath9k_htc_tx_start (struct ath9k_htc_priv*,int *,struct sk_buff*,int,int) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* ieee80211_get_buffered_bc (int ,struct ieee80211_vif*) ;
 int ieee80211_hdrlen (int ) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath9k_htc_send_buffered(struct ath9k_htc_priv *priv,
        int slot)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ieee80211_vif *vif;
 struct sk_buff *skb;
 struct ieee80211_hdr *hdr;
 int padpos, padsize, ret, tx_slot;

 spin_lock_bh(&priv->beacon_lock);

 vif = priv->beacon.bslot[slot];

 skb = ieee80211_get_buffered_bc(priv->hw, vif);

 while(skb) {
  hdr = (struct ieee80211_hdr *) skb->data;

  padpos = ieee80211_hdrlen(hdr->frame_control);
  padsize = padpos & 3;
  if (padsize && skb->len > padpos) {
   if (skb_headroom(skb) < padsize) {
    dev_kfree_skb_any(skb);
    goto next;
   }
   skb_push(skb, padsize);
   memmove(skb->data, skb->data + padsize, padpos);
  }

  tx_slot = ath9k_htc_tx_get_slot(priv);
  if (tx_slot < 0) {
   ath_dbg(common, XMIT, "No free CAB slot\n");
   dev_kfree_skb_any(skb);
   goto next;
  }

  ret = ath9k_htc_tx_start(priv, ((void*)0), skb, tx_slot, 1);
  if (ret != 0) {
   ath9k_htc_tx_clear_slot(priv, tx_slot);
   dev_kfree_skb_any(skb);

   ath_dbg(common, XMIT, "Failed to send CAB frame\n");
  } else {
   spin_lock_bh(&priv->tx.tx_lock);
   priv->tx.queued_cnt++;
   spin_unlock_bh(&priv->tx.tx_lock);
  }
 next:
  skb = ieee80211_get_buffered_bc(priv->hw, vif);
 }

 spin_unlock_bh(&priv->beacon_lock);
}
