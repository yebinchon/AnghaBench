
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* offset; int* range; } ;
struct cxl_context {int pending_irq; int wq; int lock; int irq_bitmap; int pe; TYPE_1__ irqs; } ;
typedef int irqreturn_t ;
typedef int irq_hw_number_t ;
typedef int __u16 ;


 int CXL_IRQ_RANGES ;
 int IRQ_HANDLED ;
 int WARN (int,char*,...) ;
 int irq_get_irq_data (int) ;
 int irqd_to_hwirq (int ) ;
 int pr_devel (char*,int,int ,int,int) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_cxl_afu_irq (struct cxl_context*,int,int,int) ;
 scalar_t__ unlikely (int) ;
 int wake_up_all (int *) ;

__attribute__((used)) static irqreturn_t cxl_irq_afu(int irq, void *data)
{
 struct cxl_context *ctx = data;
 irq_hw_number_t hwirq = irqd_to_hwirq(irq_get_irq_data(irq));
 int irq_off, afu_irq = 0;
 __u16 range;
 int r;
 for (r = 0; r < CXL_IRQ_RANGES; r++) {
  irq_off = hwirq - ctx->irqs.offset[r];
  range = ctx->irqs.range[r];
  if (irq_off >= 0 && irq_off < range) {
   afu_irq += irq_off;
   break;
  }
  afu_irq += range;
 }
 if (unlikely(r >= CXL_IRQ_RANGES)) {
  WARN(1, "Received AFU IRQ out of range for pe %i (virq %i hwirq %lx)\n",
       ctx->pe, irq, hwirq);
  return IRQ_HANDLED;
 }

 trace_cxl_afu_irq(ctx, afu_irq, irq, hwirq);
 pr_devel("Received AFU interrupt %i for pe: %i (virq %i hwirq %lx)\n",
        afu_irq, ctx->pe, irq, hwirq);

 if (unlikely(!ctx->irq_bitmap)) {
  WARN(1, "Received AFU IRQ for context with no IRQ bitmap\n");
  return IRQ_HANDLED;
 }
 spin_lock(&ctx->lock);
 set_bit(afu_irq - 1, ctx->irq_bitmap);
 ctx->pending_irq = 1;
 spin_unlock(&ctx->lock);

 wake_up_all(&ctx->wq);

 return IRQ_HANDLED;
}
