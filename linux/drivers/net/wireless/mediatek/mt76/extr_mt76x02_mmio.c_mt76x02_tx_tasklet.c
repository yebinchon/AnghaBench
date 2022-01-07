
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int mt76; } ;


 int mt76_txq_schedule_all (int *) ;
 int mt76x02_mac_poll_tx_status (struct mt76x02_dev*,int) ;
 int mt76x02_process_tx_status_fifo (struct mt76x02_dev*) ;

__attribute__((used)) static void mt76x02_tx_tasklet(unsigned long data)
{
 struct mt76x02_dev *dev = (struct mt76x02_dev *)data;

 mt76x02_mac_poll_tx_status(dev, 0);
 mt76x02_process_tx_status_fifo(dev);

 mt76_txq_schedule_all(&dev->mt76);
}
