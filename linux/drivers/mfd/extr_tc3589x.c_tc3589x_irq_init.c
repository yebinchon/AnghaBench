
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc3589x {int dev; int domain; } ;
struct device_node {int dummy; } ;


 int ENOSYS ;
 int TC3589x_NR_INTERNAL_IRQS ;
 int dev_err (int ,char*) ;
 int irq_domain_add_simple (struct device_node*,int ,int ,int *,struct tc3589x*) ;
 int tc3589x_irq_ops ;

__attribute__((used)) static int tc3589x_irq_init(struct tc3589x *tc3589x, struct device_node *np)
{
 tc3589x->domain = irq_domain_add_simple(
  np, TC3589x_NR_INTERNAL_IRQS, 0,
  &tc3589x_irq_ops, tc3589x);

 if (!tc3589x->domain) {
  dev_err(tc3589x->dev, "Failed to create irqdomain\n");
  return -ENOSYS;
 }

 return 0;
}
