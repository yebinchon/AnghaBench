
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633 {int irq; int* mask_regs; int dev; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int PCF50633_REG_INT1M ;
 int PCF50633_REG_INT2M ;
 int PCF50633_REG_INT3M ;
 int PCF50633_REG_INT4M ;
 int PCF50633_REG_INT5M ;
 int dev_err (int ,char*,int) ;
 scalar_t__ enable_irq_wake (int) ;
 int pcf50633_irq ;
 int pcf50633_reg_write (struct pcf50633*,int ,int) ;
 int request_threaded_irq (int,int *,int ,int,char*,struct pcf50633*) ;

int pcf50633_irq_init(struct pcf50633 *pcf, int irq)
{
 int ret;

 pcf->irq = irq;


 pcf->mask_regs[0] = 0x80;
 pcf50633_reg_write(pcf, PCF50633_REG_INT1M, pcf->mask_regs[0]);
 pcf50633_reg_write(pcf, PCF50633_REG_INT2M, 0x00);
 pcf50633_reg_write(pcf, PCF50633_REG_INT3M, 0x00);
 pcf50633_reg_write(pcf, PCF50633_REG_INT4M, 0x00);
 pcf50633_reg_write(pcf, PCF50633_REG_INT5M, 0x00);

 ret = request_threaded_irq(irq, ((void*)0), pcf50633_irq,
     IRQF_TRIGGER_LOW | IRQF_ONESHOT,
     "pcf50633", pcf);

 if (ret)
  dev_err(pcf->dev, "Failed to request IRQ %d\n", ret);

 if (enable_irq_wake(irq) < 0)
  dev_err(pcf->dev, "IRQ %u cannot be enabled as wake-up source"
   "in this hardware revision", irq);

 return ret;
}
