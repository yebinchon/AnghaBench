
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int irq_base; unsigned int irq_mask; int irq_lock; } ;
struct irq_data {int irq; } ;


 struct ucb1x00* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int ucb1x00_irq_update (struct ucb1x00*,unsigned int) ;

__attribute__((used)) static void ucb1x00_irq_unmask(struct irq_data *data)
{
 struct ucb1x00 *ucb = irq_data_get_irq_chip_data(data);
 unsigned mask = 1 << (data->irq - ucb->irq_base);

 raw_spin_lock(&ucb->irq_lock);
 ucb->irq_mask |= mask;
 ucb1x00_irq_update(ucb, mask);
 raw_spin_unlock(&ucb->irq_lock);
}
