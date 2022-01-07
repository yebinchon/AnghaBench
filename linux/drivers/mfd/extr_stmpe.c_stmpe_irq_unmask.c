
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe {int* ier; } ;
struct irq_data {int hwirq; } ;


 struct stmpe* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void stmpe_irq_unmask(struct irq_data *data)
{
 struct stmpe *stmpe = irq_data_get_irq_chip_data(data);
 int offset = data->hwirq;
 int regoffset = offset / 8;
 int mask = 1 << (offset % 8);

 stmpe->ier[regoffset] |= mask;
}
