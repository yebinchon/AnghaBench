
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_queue {int ndesc; int * entry; int hw_idx; int lock; } ;
struct mt76_dev {int dev; TYPE_1__* q_tx; } ;
struct TYPE_2__ {struct mt76_queue* q; int swq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE80211_NUM_ACS ;
 int INIT_LIST_HEAD (int *) ;
 int MT_NUM_TX_ENTRIES ;
 int MT_TXQ_PSD ;
 int MT_TX_SG_MAX_SIZE ;
 int * devm_kcalloc (int ,int,int,int ) ;
 struct mt76_queue* devm_kzalloc (int ,int,int ) ;
 int mt76_ac_to_hwq (int) ;
 int mt76u_urb_alloc (struct mt76_dev*,int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mt76u_alloc_tx(struct mt76_dev *dev)
{
 struct mt76_queue *q;
 int i, j, err;

 for (i = 0; i <= MT_TXQ_PSD; i++) {
  INIT_LIST_HEAD(&dev->q_tx[i].swq);

  if (i >= IEEE80211_NUM_ACS) {
   dev->q_tx[i].q = dev->q_tx[0].q;
   continue;
  }

  q = devm_kzalloc(dev->dev, sizeof(*q), GFP_KERNEL);
  if (!q)
   return -ENOMEM;

  spin_lock_init(&q->lock);
  q->hw_idx = mt76_ac_to_hwq(i);
  dev->q_tx[i].q = q;

  q->entry = devm_kcalloc(dev->dev,
     MT_NUM_TX_ENTRIES, sizeof(*q->entry),
     GFP_KERNEL);
  if (!q->entry)
   return -ENOMEM;

  q->ndesc = MT_NUM_TX_ENTRIES;
  for (j = 0; j < q->ndesc; j++) {
   err = mt76u_urb_alloc(dev, &q->entry[j],
           MT_TX_SG_MAX_SIZE);
   if (err < 0)
    return err;
  }
 }
 return 0;
}
