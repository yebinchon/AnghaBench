
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl {int dev; } ;
typedef int irq_hw_number_t ;
typedef int irq_handler_t ;
struct TYPE_2__ {int (* setup_irq ) (struct cxl*,int ,unsigned int) ;} ;


 TYPE_1__* cxl_ops ;
 int dev_warn (int *,char*,...) ;
 unsigned int irq_create_mapping (int *,int ) ;
 int pr_devel (char*,int ,unsigned int) ;
 int request_irq (unsigned int,int ,int ,char const*,void*) ;
 int stub1 (struct cxl*,int ,unsigned int) ;

unsigned int cxl_map_irq(struct cxl *adapter, irq_hw_number_t hwirq,
    irq_handler_t handler, void *cookie, const char *name)
{
 unsigned int virq;
 int result;


 virq = irq_create_mapping(((void*)0), hwirq);
 if (!virq) {
  dev_warn(&adapter->dev, "cxl_map_irq: irq_create_mapping failed\n");
  return 0;
 }

 if (cxl_ops->setup_irq)
  cxl_ops->setup_irq(adapter, hwirq, virq);

 pr_devel("hwirq %#lx mapped to virq %u\n", hwirq, virq);

 result = request_irq(virq, handler, 0, name, cookie);
 if (result) {
  dev_warn(&adapter->dev, "cxl_map_irq: request_irq failed: %i\n", result);
  return 0;
 }

 return virq;
}
