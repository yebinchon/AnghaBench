
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_chip {scalar_t__ core_irq; } ;


 int free_irq (scalar_t__,struct pm860x_chip*) ;

__attribute__((used)) static void device_irq_exit(struct pm860x_chip *chip)
{
 if (chip->core_irq)
  free_irq(chip->core_irq, chip);
}
