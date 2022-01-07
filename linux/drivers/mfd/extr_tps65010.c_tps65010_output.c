
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65010 {int outmask; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int OFF ;
 int ON ;
 struct tps65010* gpiochip_get_data (struct gpio_chip*) ;
 int tps65010_set_gpio_out_value (unsigned int,int) ;
 int tps65010_set_led (unsigned int,int ) ;
 int tps65010_set_vib (int) ;

__attribute__((used)) static int
tps65010_output(struct gpio_chip *chip, unsigned offset, int value)
{

 if (offset < 4) {
  struct tps65010 *tps;

  tps = gpiochip_get_data(chip);
  if (!(tps->outmask & (1 << offset)))
   return -EINVAL;
  tps65010_set_gpio_out_value(offset + 1, value);
 } else if (offset < 6)
  tps65010_set_led(offset - 3, value ? ON : OFF);
 else
  tps65010_set_vib(value);

 return 0;
}
