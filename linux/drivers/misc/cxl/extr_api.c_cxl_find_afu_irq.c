
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* range; scalar_t__* offset; } ;
struct cxl_context {TYPE_1__ irqs; } ;
typedef scalar_t__ irq_hw_number_t ;
typedef int __u16 ;


 int CXL_IRQ_RANGES ;

__attribute__((used)) static irq_hw_number_t cxl_find_afu_irq(struct cxl_context *ctx, int num)
{
 __u16 range;
 int r;

 for (r = 0; r < CXL_IRQ_RANGES; r++) {
  range = ctx->irqs.range[r];
  if (num < range) {
   return ctx->irqs.offset[r] + num;
  }
  num -= range;
 }
 return 0;
}
