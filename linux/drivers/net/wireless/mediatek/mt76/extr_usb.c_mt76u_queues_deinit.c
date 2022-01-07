
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int dummy; } ;


 int mt76u_free_rx (struct mt76_dev*) ;
 int mt76u_free_tx (struct mt76_dev*) ;
 int mt76u_stop_rx (struct mt76_dev*) ;
 int mt76u_stop_tx (struct mt76_dev*) ;

void mt76u_queues_deinit(struct mt76_dev *dev)
{
 mt76u_stop_rx(dev);
 mt76u_stop_tx(dev);

 mt76u_free_rx(dev);
 mt76u_free_tx(dev);
}
