
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int dummy; } ;


 int MT_TXQ_BK ;
 int mt76_txq_schedule (struct mt76_dev*,int) ;

void mt76_txq_schedule_all(struct mt76_dev *dev)
{
 int i;

 for (i = 0; i <= MT_TXQ_BK; i++)
  mt76_txq_schedule(dev, i);
}
