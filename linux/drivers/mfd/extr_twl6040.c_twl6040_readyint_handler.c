
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040 {int ready; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t twl6040_readyint_handler(int irq, void *data)
{
 struct twl6040 *twl6040 = data;

 complete(&twl6040->ready);

 return IRQ_HANDLED;
}
