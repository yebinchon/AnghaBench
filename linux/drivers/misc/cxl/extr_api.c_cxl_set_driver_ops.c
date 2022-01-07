
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {struct cxl_afu_driver_ops* afu_driver_ops; int afu_driver_events; } ;
struct cxl_afu_driver_ops {int event_delivered; int fetch_event; } ;


 int WARN_ON (int) ;
 int atomic_set (int *,int ) ;

void cxl_set_driver_ops(struct cxl_context *ctx,
   struct cxl_afu_driver_ops *ops)
{
 WARN_ON(!ops->fetch_event || !ops->event_delivered);
 atomic_set(&ctx->afu_driver_events, 0);
 ctx->afu_driver_ops = ops;
}
