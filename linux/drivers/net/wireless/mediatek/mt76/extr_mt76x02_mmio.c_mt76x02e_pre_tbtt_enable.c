
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pre_tbtt_tasklet; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static void mt76x02e_pre_tbtt_enable(struct mt76x02_dev *dev, bool en)
{
 if (en)
  tasklet_enable(&dev->mt76.pre_tbtt_tasklet);
 else
  tasklet_disable(&dev->mt76.pre_tbtt_tasklet);
}
