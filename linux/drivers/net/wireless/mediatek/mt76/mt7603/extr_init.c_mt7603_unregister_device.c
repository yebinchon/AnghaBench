
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pre_tbtt_tasklet; } ;
struct mt7603_dev {TYPE_1__ mt76; } ;


 int mt7603_dma_cleanup (struct mt7603_dev*) ;
 int mt7603_mcu_exit (struct mt7603_dev*) ;
 int mt76_free_device (TYPE_1__*) ;
 int mt76_unregister_device (TYPE_1__*) ;
 int tasklet_disable (int *) ;

void mt7603_unregister_device(struct mt7603_dev *dev)
{
 tasklet_disable(&dev->mt76.pre_tbtt_tasklet);
 mt76_unregister_device(&dev->mt76);
 mt7603_mcu_exit(dev);
 mt7603_dma_cleanup(dev);
 mt76_free_device(&dev->mt76);
}
