
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mt76_tx_cb {int flags; } ;
struct mt76_dev {int status_list; } ;
struct TYPE_4__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ status; } ;
struct TYPE_3__ {int idx; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_STAT_ACK ;
 int MT_TX_CB_DMA_DONE ;
 int MT_TX_CB_TXS_DONE ;
 int MT_TX_CB_TXS_FAILED ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int __skb_unlink (struct sk_buff*,int *) ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 struct mt76_tx_cb* mt76_tx_skb_cb (struct sk_buff*) ;

__attribute__((used)) static void
__mt76_tx_status_skb_done(struct mt76_dev *dev, struct sk_buff *skb, u8 flags,
     struct sk_buff_head *list)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct mt76_tx_cb *cb = mt76_tx_skb_cb(skb);
 u8 done = MT_TX_CB_DMA_DONE | MT_TX_CB_TXS_DONE;

 flags |= cb->flags;
 cb->flags = flags;

 if ((flags & done) != done)
  return;

 __skb_unlink(skb, &dev->status_list);


 if (flags & MT_TX_CB_TXS_FAILED) {
  ieee80211_tx_info_clear_status(info);
  info->status.rates[0].idx = -1;
  info->flags |= IEEE80211_TX_STAT_ACK;
 }

 __skb_queue_tail(list, skb);
}
