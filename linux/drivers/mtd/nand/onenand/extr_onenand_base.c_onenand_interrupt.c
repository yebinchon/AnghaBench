
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done; } ;
struct onenand_chip {TYPE_1__ complete; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t onenand_interrupt(int irq, void *data)
{
 struct onenand_chip *this = data;


 if (!this->complete.done)
  complete(&this->complete);

 return IRQ_HANDLED;
}
