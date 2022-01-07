
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6397_chip {int * irq_masks_cur; } ;
struct irq_data {int hwirq; } ;


 int BIT (int) ;
 struct mt6397_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void mt6397_irq_enable(struct irq_data *data)
{
 struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
 int shift = data->hwirq & 0xf;
 int reg = data->hwirq >> 4;

 mt6397->irq_masks_cur[reg] |= BIT(shift);
}
