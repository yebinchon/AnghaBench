
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htcpld_chip {unsigned int nirqs; int irq_start; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 struct htcpld_chip* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int htcpld_chip_to_irq(struct gpio_chip *chip, unsigned offset)
{
 struct htcpld_chip *chip_data = gpiochip_get_data(chip);

 if (offset < chip_data->nirqs)
  return chip_data->irq_start + offset;
 else
  return -EINVAL;
}
