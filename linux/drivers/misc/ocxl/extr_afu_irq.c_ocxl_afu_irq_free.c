
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_context {int irq_lock; int irq_idr; } ;
struct afu_irq {int id; } ;


 int EINVAL ;
 int afu_irq_free (struct afu_irq*,struct ocxl_context*) ;
 struct afu_irq* idr_find (int *,int) ;
 int idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ocxl_afu_irq_free(struct ocxl_context *ctx, int irq_id)
{
 struct afu_irq *irq;

 mutex_lock(&ctx->irq_lock);

 irq = idr_find(&ctx->irq_idr, irq_id);
 if (!irq) {
  mutex_unlock(&ctx->irq_lock);
  return -EINVAL;
 }
 idr_remove(&ctx->irq_idr, irq->id);
 afu_irq_free(irq, ctx);
 mutex_unlock(&ctx->irq_lock);
 return 0;
}
