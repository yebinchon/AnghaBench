
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43legacy_wldev {int isr_tasklet; TYPE_1__* dev; } ;
struct TYPE_2__ {int irq; } ;


 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void b43legacy_synchronize_irq(struct b43legacy_wldev *dev)
{
 synchronize_irq(dev->dev->irq);
 tasklet_kill(&dev->isr_tasklet);
}
