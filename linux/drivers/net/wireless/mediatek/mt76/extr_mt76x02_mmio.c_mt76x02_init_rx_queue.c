
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;
struct mt76_queue {int dummy; } ;


 int MT_INT_RX_DONE (int) ;
 int MT_RX_RING_BASE ;
 int mt76_queue_alloc (struct mt76x02_dev*,struct mt76_queue*,int,int,int,int ) ;
 int mt76x02_irq_enable (struct mt76x02_dev*,int ) ;

__attribute__((used)) static int
mt76x02_init_rx_queue(struct mt76x02_dev *dev, struct mt76_queue *q,
        int idx, int n_desc, int bufsize)
{
 int err;

 err = mt76_queue_alloc(dev, q, idx, n_desc, bufsize,
          MT_RX_RING_BASE);
 if (err < 0)
  return err;

 mt76x02_irq_enable(dev, MT_INT_RX_DONE(idx));

 return 0;
}
