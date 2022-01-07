
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct cxl_context {TYPE_1__* elem; struct cxl_afu* afu; } ;
struct cxl_afu {TYPE_4__* adapter; } ;
struct TYPE_10__ {int (* afu_reset ) (struct cxl_afu*) ;} ;
struct TYPE_9__ {TYPE_3__* native; } ;
struct TYPE_8__ {TYPE_2__* sl_ops; } ;
struct TYPE_7__ {int (* update_dedicated_ivtes ) (struct cxl_context*) ;} ;
struct TYPE_6__ {int software_state; } ;


 int CXL_PE_SOFTWARE_STATE_V ;
 int afu_enable (struct cxl_afu*) ;
 int cpu_to_be32 (int ) ;
 TYPE_5__* cxl_ops ;
 int process_element_entry_psl9 (struct cxl_context*,int ,int ) ;
 int stub1 (struct cxl_context*) ;
 int stub2 (struct cxl_afu*) ;

int cxl_attach_dedicated_process_psl9(struct cxl_context *ctx, u64 wed, u64 amr)
{
 struct cxl_afu *afu = ctx->afu;
 int result;


 result = process_element_entry_psl9(ctx, wed, amr);
 if (result)
  return result;

 if (ctx->afu->adapter->native->sl_ops->update_dedicated_ivtes)
  afu->adapter->native->sl_ops->update_dedicated_ivtes(ctx);

 ctx->elem->software_state = cpu_to_be32(CXL_PE_SOFTWARE_STATE_V);







 result = cxl_ops->afu_reset(afu);
 if (result)
  return result;

 return afu_enable(afu);
}
