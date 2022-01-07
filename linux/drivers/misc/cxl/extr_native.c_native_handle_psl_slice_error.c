
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
struct cxl_context {TYPE_3__* afu; } ;
typedef int irqreturn_t ;
struct TYPE_10__ {int (* ack_irq ) (struct cxl_context*,int ,int ) ;} ;
struct TYPE_9__ {TYPE_2__* native; } ;
struct TYPE_8__ {TYPE_4__* adapter; int dev; } ;
struct TYPE_7__ {TYPE_1__* sl_ops; } ;
struct TYPE_6__ {int (* debugfs_stop_trace ) (TYPE_4__*) ;int (* psl_irq_dump_registers ) (struct cxl_context*) ;} ;


 TYPE_5__* cxl_ops ;
 int dev_crit (int *,char*,...) ;
 int stub1 (struct cxl_context*) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (struct cxl_context*,int ,int ) ;

__attribute__((used)) static irqreturn_t native_handle_psl_slice_error(struct cxl_context *ctx,
      u64 dsisr, u64 errstat)
{

 dev_crit(&ctx->afu->dev, "PSL ERROR STATUS: 0x%016llx\n", errstat);

 if (ctx->afu->adapter->native->sl_ops->psl_irq_dump_registers)
  ctx->afu->adapter->native->sl_ops->psl_irq_dump_registers(ctx);

 if (ctx->afu->adapter->native->sl_ops->debugfs_stop_trace) {
  dev_crit(&ctx->afu->dev, "STOPPING CXL TRACE\n");
  ctx->afu->adapter->native->sl_ops->debugfs_stop_trace(ctx->afu->adapter);
 }

 return cxl_ops->ack_irq(ctx, 0, errstat);
}
