
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct mt76_sw_queue {struct mt76_queue* q; int swq; } ;
struct mt76_queue {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MT_INT_TX_DONE (int) ;
 int MT_TX_RING_BASE ;
 struct mt76_queue* devm_kzalloc (int ,int,int ) ;
 int mt76_queue_alloc (struct mt76x02_dev*,struct mt76_queue*,int,int,int ,int ) ;
 int mt76x02_irq_enable (struct mt76x02_dev*,int ) ;

__attribute__((used)) static int
mt76x02_init_tx_queue(struct mt76x02_dev *dev, struct mt76_sw_queue *q,
        int idx, int n_desc)
{
 struct mt76_queue *hwq;
 int err;

 hwq = devm_kzalloc(dev->mt76.dev, sizeof(*hwq), GFP_KERNEL);
 if (!hwq)
  return -ENOMEM;

 err = mt76_queue_alloc(dev, hwq, idx, n_desc, 0, MT_TX_RING_BASE);
 if (err < 0)
  return err;

 INIT_LIST_HEAD(&q->swq);
 q->q = hwq;

 mt76x02_irq_enable(dev, MT_INT_TX_DONE(idx));

 return 0;
}
