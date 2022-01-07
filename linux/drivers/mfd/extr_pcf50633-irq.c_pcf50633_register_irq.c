
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcf50633 {int lock; TYPE_1__* irq_handler; } ;
struct TYPE_2__ {void (* handler ) (int,void*) ;void* data; } ;


 int EBUSY ;
 int EINVAL ;
 int PCF50633_NUM_IRQ ;
 scalar_t__ WARN_ON (void (*) (int,void*)) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int pcf50633_register_irq(struct pcf50633 *pcf, int irq,
   void (*handler) (int, void *), void *data)
{
 if (irq < 0 || irq >= PCF50633_NUM_IRQ || !handler)
  return -EINVAL;

 if (WARN_ON(pcf->irq_handler[irq].handler))
  return -EBUSY;

 mutex_lock(&pcf->lock);
 pcf->irq_handler[irq].handler = handler;
 pcf->irq_handler[irq].data = data;
 mutex_unlock(&pcf->lock);

 return 0;
}
