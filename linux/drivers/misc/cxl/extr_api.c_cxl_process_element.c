
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {int external_pe; } ;



int cxl_process_element(struct cxl_context *ctx)
{
 return ctx->external_pe;
}
