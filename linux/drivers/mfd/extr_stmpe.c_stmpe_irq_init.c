
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmpe {int dev; int domain; TYPE_1__* variant; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int num_irqs; } ;


 int ENOSYS ;
 int dev_err (int ,char*) ;
 int irq_domain_add_simple (struct device_node*,int,int,int *,struct stmpe*) ;
 int stmpe_irq_ops ;

__attribute__((used)) static int stmpe_irq_init(struct stmpe *stmpe, struct device_node *np)
{
 int base = 0;
 int num_irqs = stmpe->variant->num_irqs;

 stmpe->domain = irq_domain_add_simple(np, num_irqs, base,
           &stmpe_irq_ops, stmpe);
 if (!stmpe->domain) {
  dev_err(stmpe->dev, "Failed to create irqdomain\n");
  return -ENOSYS;
 }

 return 0;
}
