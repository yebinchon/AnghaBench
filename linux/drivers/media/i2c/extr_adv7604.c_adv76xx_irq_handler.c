
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv76xx_state {int sd; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int adv76xx_isr (int *,int ,int*) ;

__attribute__((used)) static irqreturn_t adv76xx_irq_handler(int irq, void *dev_id)
{
 struct adv76xx_state *state = dev_id;
 bool handled = 0;

 adv76xx_isr(&state->sd, 0, &handled);

 return handled ? IRQ_HANDLED : IRQ_NONE;
}
