
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb710_slot {scalar_t__ (* irq_handler ) (struct cb710_slot*) ;} ;
struct cb710_chip {unsigned int slots; int irq_lock; struct cb710_slot* slot; } ;
typedef int irqreturn_t ;
typedef scalar_t__ (* cb710_irq_handler_t ) (struct cb710_slot*) ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t cb710_irq_handler(int irq, void *data)
{
 struct cb710_chip *chip = data;
 struct cb710_slot *slot = &chip->slot[0];
 irqreturn_t handled = IRQ_NONE;
 unsigned nr;

 spin_lock(&chip->irq_lock);

 for (nr = chip->slots; nr; ++slot, --nr) {
  cb710_irq_handler_t handler_func = slot->irq_handler;
  if (handler_func && handler_func(slot))
   handled = IRQ_HANDLED;
 }

 spin_unlock(&chip->irq_lock);

 return handled;
}
