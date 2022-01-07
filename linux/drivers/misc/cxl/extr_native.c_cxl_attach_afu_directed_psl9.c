
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cxl_context {int afu; } ;
struct TYPE_2__ {int (* afu_check_and_enable ) (int ) ;} ;


 int add_process_element (struct cxl_context*) ;
 TYPE_1__* cxl_ops ;
 int process_element_entry_psl9 (struct cxl_context*,int ,int ) ;
 int stub1 (int ) ;
 int update_ivtes_directed (struct cxl_context*) ;

int cxl_attach_afu_directed_psl9(struct cxl_context *ctx, u64 wed, u64 amr)
{
 int result;


 result = process_element_entry_psl9(ctx, wed, amr);
 if (result)
  return result;

 update_ivtes_directed(ctx);


 result = cxl_ops->afu_check_and_enable(ctx->afu);
 if (result)
  return result;

 return add_process_element(ctx);
}
