
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cxl_context {TYPE_1__* afu; } ;
struct TYPE_2__ {int prefault_mode; } ;




 int cxl_prefault_one (struct cxl_context*,int ) ;
 int cxl_prefault_vma (struct cxl_context*) ;

void cxl_prefault(struct cxl_context *ctx, u64 wed)
{
 switch (ctx->afu->prefault_mode) {
 case 128:
  cxl_prefault_one(ctx, wed);
  break;
 case 129:
  cxl_prefault_vma(ctx);
  break;
 default:
  break;
 }
}
