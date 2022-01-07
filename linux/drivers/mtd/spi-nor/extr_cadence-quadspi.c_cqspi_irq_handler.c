
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cqspi_st {int transfer_complete; scalar_t__ iobase; } ;
typedef int irqreturn_t ;


 unsigned int CQSPI_IRQ_MASK_RD ;
 unsigned int CQSPI_IRQ_MASK_WR ;
 scalar_t__ CQSPI_REG_IRQSTATUS ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t cqspi_irq_handler(int this_irq, void *dev)
{
 struct cqspi_st *cqspi = dev;
 unsigned int irq_status;


 irq_status = readl(cqspi->iobase + CQSPI_REG_IRQSTATUS);


 writel(irq_status, cqspi->iobase + CQSPI_REG_IRQSTATUS);

 irq_status &= CQSPI_IRQ_MASK_RD | CQSPI_IRQ_MASK_WR;

 if (irq_status)
  complete(&cqspi->transfer_complete);

 return IRQ_HANDLED;
}
