
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_context {TYPE_1__* mm; } ;
struct TYPE_2__ {int mm_count; } ;


 int atomic_inc (int *) ;

void cxl_context_mm_count_get(struct cxl_context *ctx)
{
 if (ctx->mm)
  atomic_inc(&ctx->mm->mm_count);
}
