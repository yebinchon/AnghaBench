
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcr20a_local {int irq_msg; int spi; int * irq_header; } ;
typedef int irqreturn_t ;


 int DAR_IRQ_STS1 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MCR20A_READ_REG (int ) ;
 int disable_irq_nosync (int) ;
 int enable_irq (int) ;
 int spi_async (int ,int *) ;

__attribute__((used)) static irqreturn_t mcr20a_irq_isr(int irq, void *data)
{
 struct mcr20a_local *lp = data;
 int ret;

 disable_irq_nosync(irq);

 lp->irq_header[0] = MCR20A_READ_REG(DAR_IRQ_STS1);

 ret = spi_async(lp->spi, &lp->irq_msg);
 if (ret) {
  enable_irq(irq);
  return IRQ_NONE;
 }

 return IRQ_HANDLED;
}
