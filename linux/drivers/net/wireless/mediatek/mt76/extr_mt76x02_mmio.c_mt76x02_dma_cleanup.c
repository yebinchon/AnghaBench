
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_tasklet; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int mt76_dma_cleanup (TYPE_1__*) ;
 int tasklet_kill (int *) ;

void mt76x02_dma_cleanup(struct mt76x02_dev *dev)
{
 tasklet_kill(&dev->mt76.tx_tasklet);
 mt76_dma_cleanup(&dev->mt76);
}
