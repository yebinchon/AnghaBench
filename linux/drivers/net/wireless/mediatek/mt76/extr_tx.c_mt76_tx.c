
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {size_t priority; scalar_t__ data; } ;
struct mt76_wcid {int tx_info; } ;
struct mt76_txq {scalar_t__ aggr; } ;
struct mt76_queue {int queued; int ndesc; int stopped; int lock; } ;
struct mt76_dev {int hw; TYPE_3__* queue_ops; TYPE_2__* q_tx; } ;
struct ieee80211_txq {scalar_t__ drv_priv; } ;
struct TYPE_4__ {int rates; int vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_sta {struct ieee80211_txq** txq; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_6__ {int (* kick ) (struct mt76_dev*,struct mt76_queue*) ;int (* tx_queue_skb ) (struct mt76_dev*,int,struct sk_buff*,struct mt76_wcid*,struct ieee80211_sta*) ;} ;
struct TYPE_5__ {struct mt76_queue* q; } ;


 size_t IEEE80211_QOS_CTL_TID_MASK ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int MT_TXQ_BE ;
 int MT_TXQ_PSD ;
 int MT_WCID_TX_INFO_SET ;
 scalar_t__ WARN_ON (int) ;
 int ieee80211_get_tx_rates (int ,struct ieee80211_sta*,struct sk_buff*,int ,int) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int ieee80211_stop_queue (int ,int) ;
 int mt76_check_agg_ssn (struct mt76_txq*,struct sk_buff*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int skb_set_queue_mapping (struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct mt76_dev*,int,struct sk_buff*,struct mt76_wcid*,struct ieee80211_sta*) ;
 int stub2 (struct mt76_dev*,struct mt76_queue*) ;

void
mt76_tx(struct mt76_dev *dev, struct ieee80211_sta *sta,
 struct mt76_wcid *wcid, struct sk_buff *skb)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct mt76_queue *q;
 int qid = skb_get_queue_mapping(skb);

 if (WARN_ON(qid >= MT_TXQ_PSD)) {
  qid = MT_TXQ_BE;
  skb_set_queue_mapping(skb, qid);
 }

 if (!(wcid->tx_info & MT_WCID_TX_INFO_SET))
  ieee80211_get_tx_rates(info->control.vif, sta, skb,
           info->control.rates, 1);

 if (sta && ieee80211_is_data_qos(hdr->frame_control)) {
  struct ieee80211_txq *txq;
  struct mt76_txq *mtxq;
  u8 tid;

  tid = skb->priority & IEEE80211_QOS_CTL_TID_MASK;
  txq = sta->txq[tid];
  mtxq = (struct mt76_txq *)txq->drv_priv;

  if (mtxq->aggr)
   mt76_check_agg_ssn(mtxq, skb);
 }

 q = dev->q_tx[qid].q;

 spin_lock_bh(&q->lock);
 dev->queue_ops->tx_queue_skb(dev, qid, skb, wcid, sta);
 dev->queue_ops->kick(dev, q);

 if (q->queued > q->ndesc - 8 && !q->stopped) {
  ieee80211_stop_queue(dev->hw, skb_get_queue_mapping(skb));
  q->stopped = 1;
 }

 spin_unlock_bh(&q->lock);
}
