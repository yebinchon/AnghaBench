
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx88_core {int pci_irqmask; } ;
struct cx8802_dev {struct cx88_core* core; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int MAX_IRQ_LOOP ;
 int MO_PCI_INTMSK ;
 int MO_PCI_INTSTAT ;
 int PCI_INT_TSINT ;
 int cx8802_mpeg_irq (struct cx8802_dev*) ;
 int cx88_core_irq (struct cx88_core*,int) ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int dprintk (int,char*,...) ;
 int pr_warn (char*) ;

__attribute__((used)) static irqreturn_t cx8802_irq(int irq, void *dev_id)
{
 struct cx8802_dev *dev = dev_id;
 struct cx88_core *core = dev->core;
 u32 status;
 int loop, handled = 0;

 for (loop = 0; loop < MAX_IRQ_LOOP; loop++) {
  status = cx_read(MO_PCI_INTSTAT) &
   (core->pci_irqmask | PCI_INT_TSINT);
  if (status == 0)
   goto out;
  dprintk(1, "cx8802_irq\n");
  dprintk(1, "    loop: %d/%d\n", loop, MAX_IRQ_LOOP);
  dprintk(1, "    status: %d\n", status);
  handled = 1;
  cx_write(MO_PCI_INTSTAT, status);

  if (status & core->pci_irqmask)
   cx88_core_irq(core, status);
  if (status & PCI_INT_TSINT)
   cx8802_mpeg_irq(dev);
 }
 if (loop == MAX_IRQ_LOOP) {
  dprintk(0, "clearing mask\n");
  pr_warn("irq loop -- clearing mask\n");
  cx_write(MO_PCI_INTMSK, 0);
 }

 out:
 return IRQ_RETVAL(handled);
}
