
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_context {int afu; } ;
struct TYPE_2__ {int (* afu_reset ) (int ) ;} ;


 int cxl_afu_disable (int ) ;
 TYPE_1__* cxl_ops ;
 int cxl_psl_purge (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static inline int detach_process_native_dedicated(struct cxl_context *ctx)
{
 cxl_ops->afu_reset(ctx->afu);
 cxl_afu_disable(ctx->afu);
 cxl_psl_purge(ctx->afu);
 return 0;
}
