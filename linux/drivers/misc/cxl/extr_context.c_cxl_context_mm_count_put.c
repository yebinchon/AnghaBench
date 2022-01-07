
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {scalar_t__ mm; } ;


 int mmdrop (scalar_t__) ;

void cxl_context_mm_count_put(struct cxl_context *ctx)
{
 if (ctx->mm)
  mmdrop(ctx->mm);
}
