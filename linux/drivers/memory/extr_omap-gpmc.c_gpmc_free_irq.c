
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpmc_device {int nirqs; int irq; } ;


 int free_irq (int ,struct gpmc_device*) ;
 int * gpmc_irq_domain ;
 int irq_dispose_mapping (int ) ;
 int irq_domain_remove (int *) ;
 int irq_find_mapping (int *,int) ;

__attribute__((used)) static int gpmc_free_irq(struct gpmc_device *gpmc)
{
 int hwirq;

 free_irq(gpmc->irq, gpmc);

 for (hwirq = 0; hwirq < gpmc->nirqs; hwirq++)
  irq_dispose_mapping(irq_find_mapping(gpmc_irq_domain, hwirq));

 irq_domain_remove(gpmc_irq_domain);
 gpmc_irq_domain = ((void*)0);

 return 0;
}
