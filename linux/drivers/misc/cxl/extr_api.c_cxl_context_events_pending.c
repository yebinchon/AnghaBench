
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {int wq; int afu_driver_events; } ;


 int atomic_add (unsigned int,int *) ;
 int wake_up_all (int *) ;

void cxl_context_events_pending(struct cxl_context *ctx,
    unsigned int new_events)
{
 atomic_add(new_events, &ctx->afu_driver_events);
 wake_up_all(&ctx->wq);
}
