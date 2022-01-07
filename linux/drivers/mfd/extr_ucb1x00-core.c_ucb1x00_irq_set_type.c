
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int irq_base; unsigned int irq_ris_enbl; unsigned int irq_fal_enbl; unsigned int irq_mask; int irq_lock; } ;
struct irq_data {int irq; } ;


 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 int UCB_IE_FAL ;
 int UCB_IE_RIS ;
 struct ucb1x00* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int ucb1x00_reg_write (struct ucb1x00*,int ,int) ;

__attribute__((used)) static int ucb1x00_irq_set_type(struct irq_data *data, unsigned int type)
{
 struct ucb1x00 *ucb = irq_data_get_irq_chip_data(data);
 unsigned mask = 1 << (data->irq - ucb->irq_base);

 raw_spin_lock(&ucb->irq_lock);
 if (type & IRQ_TYPE_EDGE_RISING)
  ucb->irq_ris_enbl |= mask;
 else
  ucb->irq_ris_enbl &= ~mask;

 if (type & IRQ_TYPE_EDGE_FALLING)
  ucb->irq_fal_enbl |= mask;
 else
  ucb->irq_fal_enbl &= ~mask;
 if (ucb->irq_mask & mask) {
  ucb1x00_reg_write(ucb, UCB_IE_RIS, ucb->irq_ris_enbl &
      ucb->irq_mask);
  ucb1x00_reg_write(ucb, UCB_IE_FAL, ucb->irq_fal_enbl &
      ucb->irq_mask);
 }
 raw_spin_unlock(&ucb->irq_lock);

 return 0;
}
