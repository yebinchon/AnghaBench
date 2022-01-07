
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int htcpld_chip_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int htcpld_direction_output(struct gpio_chip *chip,
     unsigned offset, int value)
{
 htcpld_chip_set(chip, offset, value);
 return 0;
}
