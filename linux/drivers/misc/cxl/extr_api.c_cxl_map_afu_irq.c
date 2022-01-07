
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_context {TYPE_1__* afu; } ;
typedef int irq_hw_number_t ;
typedef int irq_handler_t ;
struct TYPE_2__ {int adapter; } ;


 int ENOENT ;
 int cxl_find_afu_irq (struct cxl_context*,int) ;
 int cxl_map_irq (int ,int ,int ,void*,char*) ;

int cxl_map_afu_irq(struct cxl_context *ctx, int num,
      irq_handler_t handler, void *cookie, char *name)
{
 irq_hw_number_t hwirq;




 hwirq = cxl_find_afu_irq(ctx, num);
 if (!hwirq)
  return -ENOENT;

 return cxl_map_irq(ctx->afu->adapter, hwirq, handler, cookie, name);
}
