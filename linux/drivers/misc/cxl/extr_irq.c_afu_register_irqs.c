
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxl_context {int dummy; } ;


 int afu_allocate_irqs (struct cxl_context*,int ) ;
 int afu_register_hwirqs (struct cxl_context*) ;

int afu_register_irqs(struct cxl_context *ctx, u32 count)
{
 int rc;

 rc = afu_allocate_irqs(ctx, count);
 if (rc)
  return rc;

 afu_register_hwirqs(ctx);
 return 0;
}
