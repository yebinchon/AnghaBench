
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mt76x02_vif {int group_wcid; } ;
struct TYPE_11__ {scalar_t__ csa_complete; TYPE_1__* q_tx; } ;
struct mt76x02_dev {TYPE_5__ mt76; } ;
struct mt76_queue {int lock; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct TYPE_9__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {TYPE_3__ control; } ;
struct beacon_bc_data {int q; int * tail; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_10__ {TYPE_2__ conf; } ;
struct TYPE_7__ {struct mt76_queue* q; } ;


 int ARRAY_SIZE (int *) ;
 int IEEE80211_CONF_OFFCHANNEL ;
 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 size_t MT_TXQ_PSD ;
 struct sk_buff* __skb_dequeue (int *) ;
 int ieee80211_iterate_active_interfaces_atomic (TYPE_4__*,int ,int ,struct mt76x02_dev*) ;
 int mt76_csa_check (TYPE_5__*) ;
 TYPE_4__* mt76_hw (struct mt76x02_dev*) ;
 int mt76_skb_set_moredata (int ,int) ;
 int mt76_tx_queue_skb (struct mt76x02_dev*,size_t,struct sk_buff*,int *,int *) ;
 int mt76x02_enqueue_buffered_bc (struct mt76x02_dev*,struct beacon_bc_data*,int) ;
 int mt76x02_resync_beacon_timer (struct mt76x02_dev*) ;
 int mt76x02_update_beacon_iter ;
 int skb_queue_len (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mt76x02_pre_tbtt_tasklet(unsigned long arg)
{
 struct mt76x02_dev *dev = (struct mt76x02_dev *)arg;
 struct mt76_queue *q = dev->mt76.q_tx[MT_TXQ_PSD].q;
 struct beacon_bc_data data = {};
 struct sk_buff *skb;
 int i;

 if (mt76_hw(dev)->conf.flags & IEEE80211_CONF_OFFCHANNEL)
  return;

 mt76x02_resync_beacon_timer(dev);

 ieee80211_iterate_active_interfaces_atomic(mt76_hw(dev),
  IEEE80211_IFACE_ITER_RESUME_ALL,
  mt76x02_update_beacon_iter, dev);

 mt76_csa_check(&dev->mt76);

 if (dev->mt76.csa_complete)
  return;

 mt76x02_enqueue_buffered_bc(dev, &data, 8);

 if (!skb_queue_len(&data.q))
  return;

 for (i = 0; i < ARRAY_SIZE(data.tail); i++) {
  if (!data.tail[i])
   continue;

  mt76_skb_set_moredata(data.tail[i], 0);
 }

 spin_lock_bh(&q->lock);
 while ((skb = __skb_dequeue(&data.q)) != ((void*)0)) {
  struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
  struct ieee80211_vif *vif = info->control.vif;
  struct mt76x02_vif *mvif = (struct mt76x02_vif *)vif->drv_priv;

  mt76_tx_queue_skb(dev, MT_TXQ_PSD, skb, &mvif->group_wcid,
      ((void*)0));
 }
 spin_unlock_bh(&q->lock);
}
