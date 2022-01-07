
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {int afu_driver_events; scalar_t__ afu_driver_ops; scalar_t__ pending_afu_err; scalar_t__ pending_fault; scalar_t__ pending_irq; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool ctx_event_pending(struct cxl_context *ctx)
{
 if (ctx->pending_irq || ctx->pending_fault || ctx->pending_afu_err)
  return 1;

 if (ctx->afu_driver_ops && atomic_read(&ctx->afu_driver_events))
  return 1;

 return 0;
}
