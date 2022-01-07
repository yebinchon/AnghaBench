
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrf24j40 {int irq_msg; int spi; scalar_t__* irq_buf; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MRF24J40_READSHORT (int ) ;
 int REG_INTSTAT ;
 int disable_irq_nosync (int) ;
 int enable_irq (int) ;
 int spi_async (int ,int *) ;

__attribute__((used)) static irqreturn_t mrf24j40_isr(int irq, void *data)
{
 struct mrf24j40 *devrec = data;
 int ret;

 disable_irq_nosync(irq);

 devrec->irq_buf[0] = MRF24J40_READSHORT(REG_INTSTAT);
 devrec->irq_buf[1] = 0;


 ret = spi_async(devrec->spi, &devrec->irq_msg);
 if (ret) {
  enable_irq(irq);
  return IRQ_NONE;
 }

 return IRQ_HANDLED;
}
