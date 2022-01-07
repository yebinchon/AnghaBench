
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {int pe_inserted; } ;


 scalar_t__ remove_process_element (struct cxl_context*) ;
 scalar_t__ terminate_process_element (struct cxl_context*) ;

__attribute__((used)) static inline int detach_process_native_afu_directed(struct cxl_context *ctx)
{
 if (!ctx->pe_inserted)
  return 0;
 if (terminate_process_element(ctx))
  return -1;
 if (remove_process_element(ctx))
  return -1;

 return 0;
}
