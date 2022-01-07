
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmfx {int irq_src; } ;
struct irq_data {int hwirq; } ;


 int BIT (int) ;
 struct stmfx* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void stmfx_irq_unmask(struct irq_data *data)
{
 struct stmfx *stmfx = irq_data_get_irq_chip_data(data);

 stmfx->irq_src |= BIT(data->hwirq % 8);
}
