
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mt76x02_tx_status {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct mt76x02_dev {int txstatus_fifo; int txstatus_fifo_lock; TYPE_1__ mt76; } ;


 int MT76_STATE_RUNNING ;
 int kfifo_is_full (int *) ;
 int kfifo_put (int *,struct mt76x02_tx_status) ;
 int mt76x02_mac_load_tx_status (struct mt76x02_dev*,struct mt76x02_tx_status*) ;
 int mt76x02_send_tx_status (struct mt76x02_dev*,struct mt76x02_tx_status*,int*) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;
 int trace_mac_txstat_poll (struct mt76x02_dev*) ;

void mt76x02_mac_poll_tx_status(struct mt76x02_dev *dev, bool irq)
{
 struct mt76x02_tx_status stat = {};
 u8 update = 1;
 bool ret;

 if (!test_bit(MT76_STATE_RUNNING, &dev->mt76.state))
  return;

 trace_mac_txstat_poll(dev);

 while (!irq || !kfifo_is_full(&dev->txstatus_fifo)) {
  if (!spin_trylock(&dev->txstatus_fifo_lock))
   break;

  ret = mt76x02_mac_load_tx_status(dev, &stat);
  spin_unlock(&dev->txstatus_fifo_lock);

  if (!ret)
   break;

  if (!irq) {
   mt76x02_send_tx_status(dev, &stat, &update);
   continue;
  }

  kfifo_put(&dev->txstatus_fifo, stat);
 }
}
