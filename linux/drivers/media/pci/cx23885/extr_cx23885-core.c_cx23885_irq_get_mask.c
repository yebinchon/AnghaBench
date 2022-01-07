
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int pci_irqmask_lock; } ;


 int PCI_INT_MSK ;
 int cx_read (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 cx23885_irq_get_mask(struct cx23885_dev *dev)
{
 u32 v;
 unsigned long flags;
 spin_lock_irqsave(&dev->pci_irqmask_lock, flags);

 v = cx_read(PCI_INT_MSK);

 spin_unlock_irqrestore(&dev->pci_irqmask_lock, flags);
 return v;
}
