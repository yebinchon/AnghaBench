
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct ab8500 {TYPE_1__* dev; int domain; } ;
struct TYPE_2__ {int of_node; } ;


 int AB8500_NR_IRQS ;
 int AB8505_NR_IRQS ;
 int AB8540_NR_IRQS ;
 int AB9540_NR_IRQS ;
 int ENODEV ;
 int ab8500_irq_ops ;
 int dev_err (TYPE_1__*,char*) ;
 int irq_domain_add_simple (int ,int,int ,int *,struct ab8500*) ;
 scalar_t__ is_ab8505 (struct ab8500*) ;
 scalar_t__ is_ab8540 (struct ab8500*) ;
 scalar_t__ is_ab9540 (struct ab8500*) ;

__attribute__((used)) static int ab8500_irq_init(struct ab8500 *ab8500, struct device_node *np)
{
 int num_irqs;

 if (is_ab8540(ab8500))
  num_irqs = AB8540_NR_IRQS;
 else if (is_ab9540(ab8500))
  num_irqs = AB9540_NR_IRQS;
 else if (is_ab8505(ab8500))
  num_irqs = AB8505_NR_IRQS;
 else
  num_irqs = AB8500_NR_IRQS;


 ab8500->domain = irq_domain_add_simple(ab8500->dev->of_node,
            num_irqs, 0,
            &ab8500_irq_ops, ab8500);

 if (!ab8500->domain) {
  dev_err(ab8500->dev, "Failed to create irqdomain\n");
  return -ENODEV;
 }

 return 0;
}
