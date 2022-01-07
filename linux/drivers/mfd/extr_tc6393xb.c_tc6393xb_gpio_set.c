
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc6393xb {int lock; } ;
struct gpio_chip {int dummy; } ;


 int __tc6393xb_gpio_set (struct gpio_chip*,unsigned int,int) ;
 struct tc6393xb* gpiochip_get_data (struct gpio_chip*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void tc6393xb_gpio_set(struct gpio_chip *chip,
  unsigned offset, int value)
{
 struct tc6393xb *tc6393xb = gpiochip_get_data(chip);
 unsigned long flags;

 raw_spin_lock_irqsave(&tc6393xb->lock, flags);

 __tc6393xb_gpio_set(chip, offset, value);

 raw_spin_unlock_irqrestore(&tc6393xb->lock, flags);
}
