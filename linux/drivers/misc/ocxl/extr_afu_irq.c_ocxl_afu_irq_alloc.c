
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocxl_context {int irq_lock; int irq_idr; TYPE_2__* afu; int pasid; } ;
struct afu_irq {int id; int hw_irq; int virq; int trigger_page; } ;
struct TYPE_4__ {TYPE_1__* fn; } ;
struct TYPE_3__ {int link; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int MAX_IRQ_PER_CONTEXT ;
 int idr_alloc (int *,struct afu_irq*,int ,int ,int ) ;
 int idr_remove (int *,int) ;
 int kfree (struct afu_irq*) ;
 struct afu_irq* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocxl_link_free_irq (int ,int ) ;
 int ocxl_link_irq_alloc (int ,int *,int *) ;
 int setup_afu_irq (struct ocxl_context*,struct afu_irq*) ;
 int trace_ocxl_afu_irq_alloc (int ,int,int ,int ) ;

int ocxl_afu_irq_alloc(struct ocxl_context *ctx, int *irq_id)
{
 struct afu_irq *irq;
 int rc;

 irq = kzalloc(sizeof(struct afu_irq), GFP_KERNEL);
 if (!irq)
  return -ENOMEM;






 mutex_lock(&ctx->irq_lock);

 irq->id = idr_alloc(&ctx->irq_idr, irq, 0, MAX_IRQ_PER_CONTEXT,
   GFP_KERNEL);
 if (irq->id < 0) {
  rc = -ENOSPC;
  goto err_unlock;
 }

 rc = ocxl_link_irq_alloc(ctx->afu->fn->link, &irq->hw_irq,
    &irq->trigger_page);
 if (rc)
  goto err_idr;

 rc = setup_afu_irq(ctx, irq);
 if (rc)
  goto err_alloc;

 trace_ocxl_afu_irq_alloc(ctx->pasid, irq->id, irq->virq, irq->hw_irq);
 mutex_unlock(&ctx->irq_lock);

 *irq_id = irq->id;

 return 0;

err_alloc:
 ocxl_link_free_irq(ctx->afu->fn->link, irq->hw_irq);
err_idr:
 idr_remove(&ctx->irq_idr, irq->id);
err_unlock:
 mutex_unlock(&ctx->irq_lock);
 kfree(irq);
 return rc;
}
