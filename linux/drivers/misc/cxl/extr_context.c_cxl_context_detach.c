
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {int wq; } ;


 int __detach_context (struct cxl_context*) ;
 int afu_release_irqs (struct cxl_context*,struct cxl_context*) ;
 int wake_up_all (int *) ;

void cxl_context_detach(struct cxl_context *ctx)
{
 int rc;

 rc = __detach_context(ctx);
 if (rc)
  return;

 afu_release_irqs(ctx, ctx);
 wake_up_all(&ctx->wq);
}
