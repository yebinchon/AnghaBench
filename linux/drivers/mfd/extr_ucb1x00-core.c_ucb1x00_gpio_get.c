
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int UCB_IO_DATA ;
 struct ucb1x00* gpiochip_get_data (struct gpio_chip*) ;
 int ucb1x00_disable (struct ucb1x00*) ;
 int ucb1x00_enable (struct ucb1x00*) ;
 unsigned int ucb1x00_reg_read (struct ucb1x00*,int ) ;

__attribute__((used)) static int ucb1x00_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct ucb1x00 *ucb = gpiochip_get_data(chip);
 unsigned val;

 ucb1x00_enable(ucb);
 val = ucb1x00_reg_read(ucb, UCB_IO_DATA);
 ucb1x00_disable(ucb);

 return !!(val & (1 << offset));
}
