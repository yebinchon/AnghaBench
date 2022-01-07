
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocxl_context {int irq_lock; int irq_idr; } ;
struct afu_irq {int trigger_page; } ;


 struct afu_irq* idr_find (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u64 ocxl_afu_irq_get_addr(struct ocxl_context *ctx, int irq_id)
{
 struct afu_irq *irq;
 u64 addr = 0;

 mutex_lock(&ctx->irq_lock);
 irq = idr_find(&ctx->irq_idr, irq_id);
 if (irq)
  addr = irq->trigger_page;
 mutex_unlock(&ctx->irq_lock);
 return addr;
}
