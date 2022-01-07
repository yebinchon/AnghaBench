
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int dummy; } ;


 int mt76_txq_schedule_all (struct mt76_dev*) ;

void mt76_tx_tasklet(unsigned long data)
{
 struct mt76_dev *dev = (struct mt76_dev *)data;

 mt76_txq_schedule_all(dev);
}
