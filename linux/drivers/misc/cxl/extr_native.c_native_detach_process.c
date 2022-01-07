
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_context {TYPE_1__* afu; } ;
struct TYPE_2__ {scalar_t__ current_mode; } ;


 scalar_t__ CXL_MODE_DEDICATED ;
 int detach_process_native_afu_directed (struct cxl_context*) ;
 int detach_process_native_dedicated (struct cxl_context*) ;
 int trace_cxl_detach (struct cxl_context*) ;

__attribute__((used)) static int native_detach_process(struct cxl_context *ctx)
{
 trace_cxl_detach(ctx);

 if (ctx->afu->current_mode == CXL_MODE_DEDICATED)
  return detach_process_native_dedicated(ctx);

 return detach_process_native_afu_directed(ctx);
}
