
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spear_smi {int cmd_complete; int status; scalar_t__ io_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ SMI_SR ;
 int readl (scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int wake_up_interruptible (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t spear_smi_int_handler(int irq, void *dev_id)
{
 u32 status = 0;
 struct spear_smi *dev = dev_id;

 status = readl(dev->io_base + SMI_SR);

 if (unlikely(!status))
  return IRQ_NONE;


 writel(0, dev->io_base + SMI_SR);


 dev->status |= status;


 wake_up_interruptible(&dev->cmd_complete);

 return IRQ_HANDLED;
}
