
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mt76_wcid {int tx_info; int flags; } ;
struct mt76_txq {int retry_q; struct mt76_wcid* wcid; } ;
struct mt76_sw_queue {int swq_queued; struct mt76_queue* q; } ;
struct mt76_queue {TYPE_2__* entry; } ;
struct mt76_dev {int q_tx; TYPE_3__* queue_ops; int state; } ;
struct ieee80211_txq {int sta; int vif; } ;
struct ieee80211_tx_rate {int dummy; } ;
struct TYPE_4__ {struct ieee80211_tx_rate* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
typedef enum mt76_txq_id { ____Placeholder_mt76_txq_id } mt76_txq_id ;
struct TYPE_6__ {int (* tx_queue_skb ) (struct mt76_dev*,int,struct sk_buff*,struct mt76_wcid*,int ) ;int (* kick ) (struct mt76_dev*,struct mt76_queue*) ;} ;
struct TYPE_5__ {int schedule; struct mt76_sw_queue* qid; } ;


 int EBUSY ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_CTL_RATE_CTRL_PROBE ;
 int MT76_RESET ;
 int MT_WCID_FLAG_PS ;
 int MT_WCID_TX_INFO_SET ;
 int ieee80211_get_tx_rates (int ,int ,struct sk_buff*,struct ieee80211_tx_rate*,int) ;
 int mt76_check_agg_ssn (struct mt76_txq*,struct sk_buff*) ;
 struct sk_buff* mt76_txq_dequeue (struct mt76_dev*,struct mt76_txq*,int) ;
 int mt76_txq_get_qid (struct ieee80211_txq*) ;
 struct ieee80211_txq* mtxq_to_txq (struct mt76_txq*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct mt76_dev*,int,struct sk_buff*,struct mt76_wcid*,int ) ;
 int stub2 (struct mt76_dev*,int,struct sk_buff*,struct mt76_wcid*,int ) ;
 int stub3 (struct mt76_dev*,struct mt76_queue*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
mt76_txq_send_burst(struct mt76_dev *dev, struct mt76_sw_queue *sq,
      struct mt76_txq *mtxq, bool *empty)
{
 struct ieee80211_txq *txq = mtxq_to_txq(mtxq);
 enum mt76_txq_id qid = mt76_txq_get_qid(txq);
 struct mt76_wcid *wcid = mtxq->wcid;
 struct mt76_queue *hwq = sq->q;
 struct ieee80211_tx_info *info;
 struct sk_buff *skb;
 int n_frames = 1, limit;
 struct ieee80211_tx_rate tx_rate;
 bool ampdu;
 bool probe;
 int idx;

 if (test_bit(MT_WCID_FLAG_PS, &wcid->flags)) {
  *empty = 1;
  return 0;
 }

 skb = mt76_txq_dequeue(dev, mtxq, 0);
 if (!skb) {
  *empty = 1;
  return 0;
 }

 info = IEEE80211_SKB_CB(skb);
 if (!(wcid->tx_info & MT_WCID_TX_INFO_SET))
  ieee80211_get_tx_rates(txq->vif, txq->sta, skb,
           info->control.rates, 1);
 tx_rate = info->control.rates[0];

 probe = (info->flags & IEEE80211_TX_CTL_RATE_CTRL_PROBE);
 ampdu = IEEE80211_SKB_CB(skb)->flags & IEEE80211_TX_CTL_AMPDU;
 limit = ampdu ? 16 : 3;

 if (ampdu)
  mt76_check_agg_ssn(mtxq, skb);

 idx = dev->queue_ops->tx_queue_skb(dev, qid, skb, wcid, txq->sta);

 if (idx < 0)
  return idx;

 do {
  bool cur_ampdu;

  if (probe)
   break;

  if (test_bit(MT76_RESET, &dev->state))
   return -EBUSY;

  skb = mt76_txq_dequeue(dev, mtxq, 0);
  if (!skb) {
   *empty = 1;
   break;
  }

  info = IEEE80211_SKB_CB(skb);
  cur_ampdu = info->flags & IEEE80211_TX_CTL_AMPDU;

  if (ampdu != cur_ampdu ||
      (info->flags & IEEE80211_TX_CTL_RATE_CTRL_PROBE)) {
   skb_queue_tail(&mtxq->retry_q, skb);
   break;
  }

  info->control.rates[0] = tx_rate;

  if (cur_ampdu)
   mt76_check_agg_ssn(mtxq, skb);

  idx = dev->queue_ops->tx_queue_skb(dev, qid, skb, wcid,
         txq->sta);
  if (idx < 0)
   return idx;

  n_frames++;
 } while (n_frames < limit);

 if (!probe) {
  hwq->entry[idx].qid = sq - dev->q_tx;
  hwq->entry[idx].schedule = 1;
  sq->swq_queued++;
 }

 dev->queue_ops->kick(dev, hwq);

 return n_frames;
}
