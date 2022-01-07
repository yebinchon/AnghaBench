
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct tx_status_event {int status; int tx_token_id; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct mwifiex_txinfo {int flags; int cookie; } ;
struct mwifiex_private {int wdev; int ack_status_lock; int ack_status_frames; TYPE_1__* adapter; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct TYPE_2__ {scalar_t__ event_body; } ;


 scalar_t__ ETH_ALEN ;
 int GFP_ATOMIC ;
 int MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS ;
 scalar_t__ MWIFIEX_MGMT_FRAME_HEADER_SIZE ;
 struct mwifiex_txinfo* MWIFIEX_SKB_TXCB (struct sk_buff*) ;
 int cfg80211_mgmt_tx_status (int *,int ,scalar_t__,scalar_t__,int,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* idr_remove (int *,int ) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int skb_complete_wifi_ack (struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mwifiex_parse_tx_status_event(struct mwifiex_private *priv,
       void *event_body)
{
 struct tx_status_event *tx_status = (void *)priv->adapter->event_body;
 struct sk_buff *ack_skb;
 struct mwifiex_txinfo *tx_info;

 if (!tx_status->tx_token_id)
  return;

 spin_lock_bh(&priv->ack_status_lock);
 ack_skb = idr_remove(&priv->ack_status_frames, tx_status->tx_token_id);
 spin_unlock_bh(&priv->ack_status_lock);

 if (ack_skb) {
  tx_info = MWIFIEX_SKB_TXCB(ack_skb);

  if (tx_info->flags & MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS) {

   skb_complete_wifi_ack(ack_skb, !tx_status->status);
  } else {

   memmove(ack_skb->data +
    sizeof(struct ieee80211_hdr_3addr) +
    MWIFIEX_MGMT_FRAME_HEADER_SIZE + sizeof(u16),
    ack_skb->data +
    sizeof(struct ieee80211_hdr_3addr) +
    MWIFIEX_MGMT_FRAME_HEADER_SIZE + sizeof(u16) +
    ETH_ALEN, ack_skb->len -
    (sizeof(struct ieee80211_hdr_3addr) +
    MWIFIEX_MGMT_FRAME_HEADER_SIZE + sizeof(u16) +
    ETH_ALEN));
   ack_skb->len = ack_skb->len - ETH_ALEN;




   cfg80211_mgmt_tx_status(&priv->wdev, tx_info->cookie,
      ack_skb->data +
      MWIFIEX_MGMT_FRAME_HEADER_SIZE +
      sizeof(u16), ack_skb->len -
      (MWIFIEX_MGMT_FRAME_HEADER_SIZE
       + sizeof(u16)),
      !tx_status->status, GFP_ATOMIC);
   dev_kfree_skb_any(ack_skb);
  }
 }
}
