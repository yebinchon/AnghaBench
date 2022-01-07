
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tc6393xb {int lock; scalar_t__ scr; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ SCR_GPO_DOECR (unsigned int) ;
 int TC_GPIO_BIT (unsigned int) ;
 int __tc6393xb_gpio_set (struct gpio_chip*,unsigned int,int) ;
 struct tc6393xb* gpiochip_get_data (struct gpio_chip*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int tmio_ioread8 (scalar_t__) ;
 int tmio_iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static int tc6393xb_gpio_direction_output(struct gpio_chip *chip,
   unsigned offset, int value)
{
 struct tc6393xb *tc6393xb = gpiochip_get_data(chip);
 unsigned long flags;
 u8 doecr;

 raw_spin_lock_irqsave(&tc6393xb->lock, flags);

 __tc6393xb_gpio_set(chip, offset, value);

 doecr = tmio_ioread8(tc6393xb->scr + SCR_GPO_DOECR(offset / 8));
 doecr |= TC_GPIO_BIT(offset);
 tmio_iowrite8(doecr, tc6393xb->scr + SCR_GPO_DOECR(offset / 8));

 raw_spin_unlock_irqrestore(&tc6393xb->lock, flags);

 return 0;
}
