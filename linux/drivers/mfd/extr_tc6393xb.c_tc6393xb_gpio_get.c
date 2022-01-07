
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc6393xb {scalar_t__ scr; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ SCR_GPO_DSR (unsigned int) ;
 int TC_GPIO_BIT (unsigned int) ;
 struct tc6393xb* gpiochip_get_data (struct gpio_chip*) ;
 int tmio_ioread8 (scalar_t__) ;

__attribute__((used)) static int tc6393xb_gpio_get(struct gpio_chip *chip,
  unsigned offset)
{
 struct tc6393xb *tc6393xb = gpiochip_get_data(chip);


 return !!(tmio_ioread8(tc6393xb->scr + SCR_GPO_DSR(offset / 8))
    & TC_GPIO_BIT(offset));
}
