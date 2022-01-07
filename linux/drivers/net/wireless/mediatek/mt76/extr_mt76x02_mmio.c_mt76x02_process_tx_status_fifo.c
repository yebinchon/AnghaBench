
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt76x02_tx_status {int dummy; } ;
struct mt76x02_dev {int txstatus_fifo; } ;


 scalar_t__ kfifo_get (int *,struct mt76x02_tx_status*) ;
 int mt76x02_send_tx_status (struct mt76x02_dev*,struct mt76x02_tx_status*,int*) ;

__attribute__((used)) static void mt76x02_process_tx_status_fifo(struct mt76x02_dev *dev)
{
 struct mt76x02_tx_status stat;
 u8 update = 1;

 while (kfifo_get(&dev->txstatus_fifo, &stat))
  mt76x02_send_tx_status(dev, &stat, &update);
}
