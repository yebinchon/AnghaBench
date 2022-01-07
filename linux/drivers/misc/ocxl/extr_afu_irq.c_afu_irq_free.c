
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocxl_context {TYPE_2__* afu; scalar_t__ mapping; int pasid; } ;
struct afu_irq {int hw_irq; int private; int (* free_private ) (int ) ;int id; } ;
struct TYPE_4__ {TYPE_1__* fn; } ;
struct TYPE_3__ {int link; } ;


 int PAGE_SHIFT ;
 int kfree (struct afu_irq*) ;
 int ocxl_irq_id_to_offset (struct ocxl_context*,int ) ;
 int ocxl_link_free_irq (int ,int ) ;
 int release_afu_irq (struct afu_irq*) ;
 int stub1 (int ) ;
 int trace_ocxl_afu_irq_free (int ,int ) ;
 int unmap_mapping_range (scalar_t__,int ,int,int) ;

__attribute__((used)) static void afu_irq_free(struct afu_irq *irq, struct ocxl_context *ctx)
{
 trace_ocxl_afu_irq_free(ctx->pasid, irq->id);
 if (ctx->mapping)
  unmap_mapping_range(ctx->mapping,
    ocxl_irq_id_to_offset(ctx, irq->id),
    1 << PAGE_SHIFT, 1);
 release_afu_irq(irq);
 if (irq->free_private)
  irq->free_private(irq->private);
 ocxl_link_free_irq(ctx->afu->fn->link, irq->hw_irq);
 kfree(irq);
}
