
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {scalar_t__ irq_chip; scalar_t__ aod_irq_chip; } ;


 int regmap_irq_get_virq (scalar_t__,int) ;

__attribute__((used)) static int arizona_map_irq(struct arizona *arizona, int irq)
{
 int ret;

 if (arizona->aod_irq_chip) {
  ret = regmap_irq_get_virq(arizona->aod_irq_chip, irq);
  if (ret >= 0)
   return ret;
 }

 return regmap_irq_get_virq(arizona->irq_chip, irq);
}
