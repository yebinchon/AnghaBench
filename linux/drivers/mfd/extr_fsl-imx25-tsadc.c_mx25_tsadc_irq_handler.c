
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mx25_tsadc {int domain; int regs; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 int MX25_TGSR_GCQ_INT ;
 int MX25_TGSR_TCQ_INT ;
 int MX25_TSC_TGSR ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int generic_handle_irq (int ) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct mx25_tsadc* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_find_mapping (int ,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static void mx25_tsadc_irq_handler(struct irq_desc *desc)
{
 struct mx25_tsadc *tsadc = irq_desc_get_handler_data(desc);
 struct irq_chip *chip = irq_desc_get_chip(desc);
 u32 status;

 chained_irq_enter(chip, desc);

 regmap_read(tsadc->regs, MX25_TSC_TGSR, &status);

 if (status & MX25_TGSR_GCQ_INT)
  generic_handle_irq(irq_find_mapping(tsadc->domain, 1));

 if (status & MX25_TGSR_TCQ_INT)
  generic_handle_irq(irq_find_mapping(tsadc->domain, 0));

 chained_irq_exit(chip, desc);
}
