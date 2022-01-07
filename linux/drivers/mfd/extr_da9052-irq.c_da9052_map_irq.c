
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052 {int irq_data; } ;


 int regmap_irq_get_virq (int ,int) ;

__attribute__((used)) static int da9052_map_irq(struct da9052 *da9052, int irq)
{
 return regmap_irq_get_virq(da9052->irq_data, irq);
}
