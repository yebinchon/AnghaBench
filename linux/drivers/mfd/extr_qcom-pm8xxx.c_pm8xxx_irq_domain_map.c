
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pm_irq_chip {TYPE_1__* pm_irq_data; } ;
struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {int irq_chip; } ;


 int handle_level_irq ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int ,int ,struct pm_irq_chip*,int ,int *,int *) ;
 int irq_set_noprobe (unsigned int) ;

__attribute__((used)) static void pm8xxx_irq_domain_map(struct pm_irq_chip *chip,
      struct irq_domain *domain, unsigned int irq,
      irq_hw_number_t hwirq, unsigned int type)
{
 irq_domain_set_info(domain, irq, hwirq, chip->pm_irq_data->irq_chip,
       chip, handle_level_irq, ((void*)0), ((void*)0));
 irq_set_noprobe(irq);
}
