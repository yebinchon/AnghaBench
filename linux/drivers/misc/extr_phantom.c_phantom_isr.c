
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct phm_regs {int mask; int* values; int count; } ;
struct phantom_device {int status; int ctl_reg; int wait; int counter; scalar_t__ iaddr; int regs_lock; scalar_t__ oaddr; struct phm_regs oregs; } ;
typedef int irqreturn_t ;


 int BIT (unsigned int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PHB_NOT_OH ;
 scalar_t__ PHN_CONTROL ;
 int PHN_CTL_AMP ;
 unsigned int PHN_CTL_IRQ ;
 int atomic_inc (int *) ;
 unsigned int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 unsigned int min (int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t phantom_isr(int irq, void *data)
{
 struct phantom_device *dev = data;
 unsigned int i;
 u32 ctl;

 spin_lock(&dev->regs_lock);
 ctl = ioread32(dev->iaddr + PHN_CONTROL);
 if (!(ctl & PHN_CTL_IRQ)) {
  spin_unlock(&dev->regs_lock);
  return IRQ_NONE;
 }

 iowrite32(0, dev->iaddr);
 iowrite32(0xc0, dev->iaddr);

 if (dev->status & PHB_NOT_OH) {
  struct phm_regs *r = &dev->oregs;
  u32 m = min(r->count, 8U);

  for (i = 0; i < m; i++)
   if (r->mask & BIT(i))
    iowrite32(r->values[i], dev->oaddr + i);

  dev->ctl_reg ^= PHN_CTL_AMP;
  iowrite32(dev->ctl_reg, dev->iaddr + PHN_CONTROL);
 }
 spin_unlock(&dev->regs_lock);

 ioread32(dev->iaddr);

 atomic_inc(&dev->counter);
 wake_up_interruptible(&dev->wait);

 return IRQ_HANDLED;
}
