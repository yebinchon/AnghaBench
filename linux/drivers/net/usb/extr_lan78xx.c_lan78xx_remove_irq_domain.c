
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ phyirq; int * irqdomain; } ;
struct lan78xx_net {TYPE_1__ domain_data; } ;


 int irq_dispose_mapping (scalar_t__) ;
 int irq_domain_remove (int *) ;

__attribute__((used)) static void lan78xx_remove_irq_domain(struct lan78xx_net *dev)
{
 if (dev->domain_data.phyirq > 0) {
  irq_dispose_mapping(dev->domain_data.phyirq);

  if (dev->domain_data.irqdomain)
   irq_domain_remove(dev->domain_data.irqdomain);
 }
 dev->domain_data.phyirq = 0;
 dev->domain_data.irqdomain = ((void*)0);
}
