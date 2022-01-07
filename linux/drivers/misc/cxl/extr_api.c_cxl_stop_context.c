
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {int dummy; } ;


 int __detach_context (struct cxl_context*) ;

int cxl_stop_context(struct cxl_context *ctx)
{
 return __detach_context(ctx);
}
