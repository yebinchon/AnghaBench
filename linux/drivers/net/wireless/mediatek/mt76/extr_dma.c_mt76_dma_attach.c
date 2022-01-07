
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int * queue_ops; } ;


 int mt76_dma_ops ;

void mt76_dma_attach(struct mt76_dev *dev)
{
 dev->queue_ops = &mt76_dma_ops;
}
