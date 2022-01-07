
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cxl_context {int status; int * mm; TYPE_1__* afu; int pid; int fault_work; int status_mutex; } ;
typedef enum cxl_context_status { ____Placeholder_cxl_context_status } cxl_context_status ;
struct TYPE_4__ {int (* irq_wait ) (struct cxl_context*) ;scalar_t__ (* link_ok ) (int ,TYPE_1__*) ;scalar_t__ (* detach_process ) (struct cxl_context*) ;} ;
struct TYPE_3__ {int adapter; } ;


 int CLOSED ;
 int EBUSY ;
 int STARTED ;
 int WARN_ON (int) ;
 int cxl_adapter_context_put (int ) ;
 int cxl_context_mm_count_put (struct cxl_context*) ;
 int cxl_ctx_put () ;
 TYPE_2__* cxl_ops ;
 int flush_work (int *) ;
 int mm_context_remove_copro (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_pid (int ) ;
 scalar_t__ stub1 (struct cxl_context*) ;
 scalar_t__ stub2 (int ,TYPE_1__*) ;
 int stub3 (struct cxl_context*) ;

int __detach_context(struct cxl_context *ctx)
{
 enum cxl_context_status status;

 mutex_lock(&ctx->status_mutex);
 status = ctx->status;
 ctx->status = CLOSED;
 mutex_unlock(&ctx->status_mutex);
 if (status != STARTED)
  return -EBUSY;




 WARN_ON(cxl_ops->detach_process(ctx) &&
  cxl_ops->link_ok(ctx->afu->adapter, ctx->afu));
 flush_work(&ctx->fault_work);





 if (cxl_ops->irq_wait)
  cxl_ops->irq_wait(ctx);


 put_pid(ctx->pid);

 cxl_ctx_put();


 cxl_adapter_context_put(ctx->afu->adapter);


 cxl_context_mm_count_put(ctx);
 if (ctx->mm)
  mm_context_remove_copro(ctx->mm);
 ctx->mm = ((void*)0);

 return 0;
}
