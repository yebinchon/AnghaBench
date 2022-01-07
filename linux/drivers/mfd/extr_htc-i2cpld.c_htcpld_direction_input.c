
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int ngpio; } ;


 int EINVAL ;

__attribute__((used)) static int htcpld_direction_input(struct gpio_chip *chip,
     unsigned offset)
{




 return (offset < chip->ngpio) ? 0 : -EINVAL;
}
