
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_guest_device {int bm_tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t vmci_interrupt_bm(int irq, void *_dev)
{
 struct vmci_guest_device *dev = _dev;


 tasklet_schedule(&dev->bm_tasklet);

 return IRQ_HANDLED;
}
