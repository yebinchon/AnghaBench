
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13xxx {int irq_data; } ;


 int disable_irq_nosync (int) ;
 int regmap_irq_get_virq (int ,int) ;

int mc13xxx_irq_mask(struct mc13xxx *mc13xxx, int irq)
{
 int virq = regmap_irq_get_virq(mc13xxx->irq_data, irq);

 disable_irq_nosync(virq);

 return 0;
}
