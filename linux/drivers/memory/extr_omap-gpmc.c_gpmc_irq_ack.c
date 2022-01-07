
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int hwirq; } ;


 int BIT (unsigned int) ;
 int GPMC_IRQSTATUS ;
 unsigned int GPMC_NR_NAND_IRQS ;
 int gpmc_write_reg (int ,int ) ;

__attribute__((used)) static void gpmc_irq_ack(struct irq_data *d)
{
 unsigned int hwirq = d->hwirq;


 if (hwirq >= GPMC_NR_NAND_IRQS)
  hwirq += 8 - GPMC_NR_NAND_IRQS;


 gpmc_write_reg(GPMC_IRQSTATUS, BIT(hwirq));
}
