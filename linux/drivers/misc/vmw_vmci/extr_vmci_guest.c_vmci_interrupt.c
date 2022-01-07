
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_guest_device {int dev; int bm_tasklet; int datagram_tasklet; scalar_t__ iobase; scalar_t__ exclusive_vectors; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ VMCI_ICR_ADDR ;
 unsigned int VMCI_ICR_DATAGRAM ;
 unsigned int VMCI_ICR_NOTIFICATION ;
 int dev_warn (int ,char*,unsigned int) ;
 unsigned int ioread32 (scalar_t__) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t vmci_interrupt(int irq, void *_dev)
{
 struct vmci_guest_device *dev = _dev;







 if (dev->exclusive_vectors) {
  tasklet_schedule(&dev->datagram_tasklet);
 } else {
  unsigned int icr;


  icr = ioread32(dev->iobase + VMCI_ICR_ADDR);
  if (icr == 0 || icr == ~0)
   return IRQ_NONE;

  if (icr & VMCI_ICR_DATAGRAM) {
   tasklet_schedule(&dev->datagram_tasklet);
   icr &= ~VMCI_ICR_DATAGRAM;
  }

  if (icr & VMCI_ICR_NOTIFICATION) {
   tasklet_schedule(&dev->bm_tasklet);
   icr &= ~VMCI_ICR_NOTIFICATION;
  }

  if (icr != 0)
   dev_warn(dev->dev,
     "Ignoring unknown interrupt cause (%d)\n",
     icr);
 }

 return IRQ_HANDLED;
}
