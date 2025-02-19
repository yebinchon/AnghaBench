
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl {int dummy; } ;
typedef int irq_hw_number_t ;
typedef int irq_handler_t ;
struct TYPE_2__ {int (* alloc_one_irq ) (struct cxl*) ;int (* release_one_irq ) (struct cxl*,int) ;} ;


 int ENOMEM ;
 int cxl_map_irq (struct cxl*,int,int ,void*,char const*) ;
 TYPE_1__* cxl_ops ;
 int stub1 (struct cxl*) ;
 int stub2 (struct cxl*,int) ;

int cxl_register_one_irq(struct cxl *adapter,
   irq_handler_t handler,
   void *cookie,
   irq_hw_number_t *dest_hwirq,
   unsigned int *dest_virq,
   const char *name)
{
 int hwirq, virq;

 if ((hwirq = cxl_ops->alloc_one_irq(adapter)) < 0)
  return hwirq;

 if (!(virq = cxl_map_irq(adapter, hwirq, handler, cookie, name)))
  goto err;

 *dest_hwirq = hwirq;
 *dest_virq = virq;

 return 0;

err:
 cxl_ops->release_one_irq(adapter, hwirq);
 return -ENOMEM;
}
