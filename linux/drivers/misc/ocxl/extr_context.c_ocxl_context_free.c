
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocxl_context {TYPE_1__* afu; int irq_idr; int pasid; } ;
struct TYPE_2__ {int contexts_lock; int contexts_idr; int pasid_count; } ;


 int idr_destroy (int *) ;
 int idr_remove (int *,int ) ;
 int kfree (struct ocxl_context*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocxl_afu_irq_free_all (struct ocxl_context*) ;
 int ocxl_afu_put (TYPE_1__*) ;

void ocxl_context_free(struct ocxl_context *ctx)
{
 mutex_lock(&ctx->afu->contexts_lock);
 ctx->afu->pasid_count--;
 idr_remove(&ctx->afu->contexts_idr, ctx->pasid);
 mutex_unlock(&ctx->afu->contexts_lock);

 ocxl_afu_irq_free_all(ctx);
 idr_destroy(&ctx->irq_idr);

 ocxl_afu_put(ctx->afu);
 kfree(ctx);
}
