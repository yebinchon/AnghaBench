
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_chip {char* name; int irq_ack; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {int irq_ack; } ;


 int IRQF_ONESHOT ;
 int TWL4030_CORE_NR_IRQS ;
 int TWL4030_MODULE_INT ;
 int TWL4030_PWR_NR_IRQS ;
 int activate_irq (int) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,char*,int,int,int) ;
 struct irq_chip dummy_irq_chip ;
 int enable_irq_wake (int) ;
 int * handle_simple_irq ;
 int handle_twl4030_pih ;
 int irq_alloc_descs (int,int ,int,int ) ;
 int irq_domain_add_legacy (struct device_node*,int,int,int ,int *,int *) ;
 int irq_domain_simple_ops ;
 int irq_set_chip_and_handler (int,struct irq_chip*,int *) ;
 int irq_set_nested_thread (int,int) ;
 int request_threaded_irq (int,int *,int ,int ,char*,int *) ;
 int twl4030_init_sih_modules (int ) ;
 int twl4030_irq_base ;
 TYPE_1__ twl4030_sih_irq_chip ;
 int twl4030_sih_setup (struct device*,int ,int) ;
 int twl_irq_line ;

int twl4030_init_irq(struct device *dev, int irq_num)
{
 static struct irq_chip twl4030_irq_chip;
 int status, i;
 int irq_base, irq_end, nr_irqs;
 struct device_node *node = dev->of_node;






 nr_irqs = TWL4030_PWR_NR_IRQS + TWL4030_CORE_NR_IRQS;

 irq_base = irq_alloc_descs(-1, 0, nr_irqs, 0);
 if (irq_base < 0) {
  dev_err(dev, "Fail to allocate IRQ descs\n");
  return irq_base;
 }

 irq_domain_add_legacy(node, nr_irqs, irq_base, 0,
         &irq_domain_simple_ops, ((void*)0));

 irq_end = irq_base + TWL4030_CORE_NR_IRQS;





 status = twl4030_init_sih_modules(twl_irq_line);
 if (status < 0)
  return status;

 twl4030_irq_base = irq_base;





 twl4030_irq_chip = dummy_irq_chip;
 twl4030_irq_chip.name = "twl4030";

 twl4030_sih_irq_chip.irq_ack = dummy_irq_chip.irq_ack;

 for (i = irq_base; i < irq_end; i++) {
  irq_set_chip_and_handler(i, &twl4030_irq_chip,
      handle_simple_irq);
  irq_set_nested_thread(i, 1);
  activate_irq(i);
 }

 dev_info(dev, "%s (irq %d) chaining IRQs %d..%d\n", "PIH",
   irq_num, irq_base, irq_end);


 status = twl4030_sih_setup(dev, TWL4030_MODULE_INT, irq_end);
 if (status < 0) {
  dev_err(dev, "sih_setup PWR INT --> %d\n", status);
  goto fail;
 }


 status = request_threaded_irq(irq_num, ((void*)0), handle_twl4030_pih,
          IRQF_ONESHOT,
          "TWL4030-PIH", ((void*)0));
 if (status < 0) {
  dev_err(dev, "could not claim irq%d: %d\n", irq_num, status);
  goto fail_rqirq;
 }
 enable_irq_wake(irq_num);

 return irq_base;
fail_rqirq:

fail:
 for (i = irq_base; i < irq_end; i++) {
  irq_set_nested_thread(i, 0);
  irq_set_chip_and_handler(i, ((void*)0), ((void*)0));
 }

 return status;
}
