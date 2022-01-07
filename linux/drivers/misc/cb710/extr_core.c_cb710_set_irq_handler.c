
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb710_slot {int irq_handler; } ;
struct cb710_chip {int irq_lock; } ;
typedef int cb710_irq_handler_t ;


 struct cb710_chip* cb710_slot_to_chip (struct cb710_slot*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void cb710_set_irq_handler(struct cb710_slot *slot,
 cb710_irq_handler_t handler)
{
 struct cb710_chip *chip = cb710_slot_to_chip(slot);
 unsigned long flags;

 spin_lock_irqsave(&chip->irq_lock, flags);
 slot->irq_handler = handler;
 spin_unlock_irqrestore(&chip->irq_lock, flags);
}
