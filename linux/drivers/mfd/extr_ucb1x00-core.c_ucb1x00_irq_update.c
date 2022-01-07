
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {unsigned int irq_ris_enbl; int irq_mask; unsigned int irq_fal_enbl; } ;


 int UCB_IE_FAL ;
 int UCB_IE_RIS ;
 int ucb1x00_disable (struct ucb1x00*) ;
 int ucb1x00_enable (struct ucb1x00*) ;
 int ucb1x00_reg_write (struct ucb1x00*,int ,int) ;

__attribute__((used)) static void ucb1x00_irq_update(struct ucb1x00 *ucb, unsigned mask)
{
 ucb1x00_enable(ucb);
 if (ucb->irq_ris_enbl & mask)
  ucb1x00_reg_write(ucb, UCB_IE_RIS, ucb->irq_ris_enbl &
      ucb->irq_mask);
 if (ucb->irq_fal_enbl & mask)
  ucb1x00_reg_write(ucb, UCB_IE_FAL, ucb->irq_fal_enbl &
      ucb->irq_mask);
 ucb1x00_disable(ucb);
}
