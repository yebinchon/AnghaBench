
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int dummy; } ;


 int mt76u_alloc_rx (struct mt76_dev*) ;
 int mt76u_alloc_tx (struct mt76_dev*) ;

int mt76u_alloc_queues(struct mt76_dev *dev)
{
 int err;

 err = mt76u_alloc_rx(dev);
 if (err < 0)
  return err;

 return mt76u_alloc_tx(dev);
}
