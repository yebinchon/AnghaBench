
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int io_out; int io_lock; } ;
struct gpio_chip {int dummy; } ;


 int UCB_IO_DATA ;
 struct ucb1x00* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ucb1x00_disable (struct ucb1x00*) ;
 int ucb1x00_enable (struct ucb1x00*) ;
 int ucb1x00_reg_write (struct ucb1x00*,int ,int) ;

__attribute__((used)) static void ucb1x00_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct ucb1x00 *ucb = gpiochip_get_data(chip);
 unsigned long flags;

 spin_lock_irqsave(&ucb->io_lock, flags);
 if (value)
  ucb->io_out |= 1 << offset;
 else
  ucb->io_out &= ~(1 << offset);

 ucb1x00_enable(ucb);
 ucb1x00_reg_write(ucb, UCB_IO_DATA, ucb->io_out);
 ucb1x00_disable(ucb);
 spin_unlock_irqrestore(&ucb->io_lock, flags);
}
