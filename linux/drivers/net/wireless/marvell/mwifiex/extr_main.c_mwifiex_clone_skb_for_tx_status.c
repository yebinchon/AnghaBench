
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct sk_buff {int dummy; } ;
struct mwifiex_txinfo {int ack_frame_id; int cookie; int flags; } ;
struct mwifiex_private {int ack_status_lock; int ack_status_frames; } ;


 int GFP_ATOMIC ;
 int MWIFIEX_BUF_FLAG_ACTION_TX_STATUS ;
 struct mwifiex_txinfo* MWIFIEX_SKB_TXCB (struct sk_buff*) ;
 int idr_alloc (int *,struct sk_buff*,int,int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ skb_shared (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct sk_buff *
mwifiex_clone_skb_for_tx_status(struct mwifiex_private *priv,
    struct sk_buff *skb, u8 flag, u64 *cookie)
{
 struct sk_buff *orig_skb = skb;
 struct mwifiex_txinfo *tx_info, *orig_tx_info;

 skb = skb_clone(skb, GFP_ATOMIC);
 if (skb) {
  int id;

  spin_lock_bh(&priv->ack_status_lock);
  id = idr_alloc(&priv->ack_status_frames, orig_skb,
          1, 0x10, GFP_ATOMIC);
  spin_unlock_bh(&priv->ack_status_lock);

  if (id >= 0) {
   tx_info = MWIFIEX_SKB_TXCB(skb);
   tx_info->ack_frame_id = id;
   tx_info->flags |= flag;
   orig_tx_info = MWIFIEX_SKB_TXCB(orig_skb);
   orig_tx_info->ack_frame_id = id;
   orig_tx_info->flags |= flag;

   if (flag == MWIFIEX_BUF_FLAG_ACTION_TX_STATUS && cookie)
    orig_tx_info->cookie = *cookie;

  } else if (skb_shared(skb)) {
   kfree_skb(orig_skb);
  } else {
   kfree_skb(skb);
   skb = orig_skb;
  }
 } else {

  skb = orig_skb;
 }

 return skb;
}
