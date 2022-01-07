
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * range; int * offset; } ;
struct cxl_context {scalar_t__ status; TYPE_2__ irqs; TYPE_1__* elem; } ;
struct TYPE_3__ {void** ivte_ranges; void** ivte_offsets; } ;


 int CXL_IRQ_RANGES ;
 scalar_t__ STARTED ;
 int WARN_ON (int ) ;
 int add_process_element (struct cxl_context*) ;
 void* cpu_to_be16 (int ) ;
 int remove_process_element (struct cxl_context*) ;
 int terminate_process_element (struct cxl_context*) ;

__attribute__((used)) static void update_ivtes_directed(struct cxl_context *ctx)
{
 bool need_update = (ctx->status == STARTED);
 int r;

 if (need_update) {
  WARN_ON(terminate_process_element(ctx));
  WARN_ON(remove_process_element(ctx));
 }

 for (r = 0; r < CXL_IRQ_RANGES; r++) {
  ctx->elem->ivte_offsets[r] = cpu_to_be16(ctx->irqs.offset[r]);
  ctx->elem->ivte_ranges[r] = cpu_to_be16(ctx->irqs.range[r]);
 }
 if (need_update)
  WARN_ON(add_process_element(ctx));
}
