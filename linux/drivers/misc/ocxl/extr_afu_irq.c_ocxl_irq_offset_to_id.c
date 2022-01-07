
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocxl_context {TYPE_1__* afu; } ;
struct TYPE_2__ {int irq_base_offset; } ;


 int PAGE_SHIFT ;

int ocxl_irq_offset_to_id(struct ocxl_context *ctx, u64 offset)
{
 return (offset - ctx->afu->irq_base_offset) >> PAGE_SHIFT;
}
