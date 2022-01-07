
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocxl_context {TYPE_1__* afu; } ;
struct TYPE_2__ {scalar_t__ irq_base_offset; } ;


 int PAGE_SHIFT ;

u64 ocxl_irq_id_to_offset(struct ocxl_context *ctx, int irq_id)
{
 return ctx->afu->irq_base_offset + (irq_id << PAGE_SHIFT);
}
