
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * range; int * offset; } ;
struct cxl_context {TYPE_1__ irqs; TYPE_2__* elem; } ;
struct TYPE_4__ {void** ivte_ranges; void** ivte_offsets; } ;


 int CXL_IRQ_RANGES ;
 void* cpu_to_be16 (int ) ;

void cxl_update_dedicated_ivtes_psl9(struct cxl_context *ctx)
{
 int r;

 for (r = 0; r < CXL_IRQ_RANGES; r++) {
  ctx->elem->ivte_offsets[r] = cpu_to_be16(ctx->irqs.offset[r]);
  ctx->elem->ivte_ranges[r] = cpu_to_be16(ctx->irqs.range[r]);
 }
}
