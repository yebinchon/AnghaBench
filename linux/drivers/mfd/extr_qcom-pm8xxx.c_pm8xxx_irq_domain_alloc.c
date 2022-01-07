
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_irq_chip {int dummy; } ;
struct irq_fwspec {int dummy; } ;
struct irq_domain {struct pm_irq_chip* host_data; } ;
typedef scalar_t__ irq_hw_number_t ;


 int irq_domain_translate_twocell (struct irq_domain*,struct irq_fwspec*,scalar_t__*,unsigned int*) ;
 int pm8xxx_irq_domain_map (struct pm_irq_chip*,struct irq_domain*,unsigned int,scalar_t__,unsigned int) ;

__attribute__((used)) static int pm8xxx_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
       unsigned int nr_irqs, void *data)
{
 struct pm_irq_chip *chip = domain->host_data;
 struct irq_fwspec *fwspec = data;
 irq_hw_number_t hwirq;
 unsigned int type;
 int ret, i;

 ret = irq_domain_translate_twocell(domain, fwspec, &hwirq, &type);
 if (ret)
  return ret;

 for (i = 0; i < nr_irqs; i++)
  pm8xxx_irq_domain_map(chip, domain, virq + i, hwirq + i, type);

 return 0;
}
