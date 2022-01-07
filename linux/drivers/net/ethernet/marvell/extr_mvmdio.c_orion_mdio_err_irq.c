
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orion_mdio_dev {int smi_busy_wait; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MVMDIO_ERR_INT_CAUSE ;
 int MVMDIO_ERR_INT_SMI_DONE ;
 int readl (scalar_t__) ;
 int wake_up (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t orion_mdio_err_irq(int irq, void *dev_id)
{
 struct orion_mdio_dev *dev = dev_id;

 if (readl(dev->regs + MVMDIO_ERR_INT_CAUSE) &
   MVMDIO_ERR_INT_SMI_DONE) {
  writel(~MVMDIO_ERR_INT_SMI_DONE,
    dev->regs + MVMDIO_ERR_INT_CAUSE);
  wake_up(&dev->smi_busy_wait);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
