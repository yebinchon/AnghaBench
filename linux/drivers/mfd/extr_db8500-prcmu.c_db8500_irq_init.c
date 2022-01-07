
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ENOSYS ;
 int NUM_PRCMU_WAKEUPS ;
 int db8500_irq_domain ;
 int db8500_irq_ops ;
 int irq_create_mapping (int ,int) ;
 int irq_domain_add_simple (struct device_node*,int,int ,int *,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int db8500_irq_init(struct device_node *np)
{
 int i;

 db8500_irq_domain = irq_domain_add_simple(
  np, NUM_PRCMU_WAKEUPS, 0,
  &db8500_irq_ops, ((void*)0));

 if (!db8500_irq_domain) {
  pr_err("Failed to create irqdomain\n");
  return -ENOSYS;
 }


 for (i = 0; i < NUM_PRCMU_WAKEUPS; i++)
  irq_create_mapping(db8500_irq_domain, i);

 return 0;
}
