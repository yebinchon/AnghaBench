
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* range; } ;
struct cxl_context {int master; int assign_tidr; int pending_irq; int pending_fault; int pending_afu_err; int pe; int external_pe; int pe_inserted; struct cxl_afu* afu; int * elem; int status; int status_mutex; TYPE_1__ irqs; int irq_names; int * irq_bitmap; int lock; int wq; int fault_work; int sste_lock; scalar_t__ tidr; int * mapping; int mapping_lock; int * pid; } ;
struct cxl_afu {TYPE_2__* native; int contexts_lock; int num_procs; int contexts_idr; } ;
struct TYPE_4__ {int * spa; } ;


 int CPU_FTR_HVMODE ;
 int CXL_IRQ_RANGES ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int OPENED ;
 scalar_t__ cpu_has_feature (int ) ;
 int cxl_afu_get (struct cxl_afu*) ;
 int cxl_alloc_sst (struct cxl_context*) ;
 int cxl_handle_fault ;
 scalar_t__ cxl_is_power8 () ;
 int idr_alloc (int *,struct cxl_context*,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;

int cxl_context_init(struct cxl_context *ctx, struct cxl_afu *afu, bool master)
{
 int i;

 ctx->afu = afu;
 ctx->master = master;
 ctx->pid = ((void*)0);
 mutex_init(&ctx->mapping_lock);
 ctx->mapping = ((void*)0);
 ctx->tidr = 0;
 ctx->assign_tidr = 0;

 if (cxl_is_power8()) {
  spin_lock_init(&ctx->sste_lock);
  i = cxl_alloc_sst(ctx);
  if (i)
   return i;
 }

 INIT_WORK(&ctx->fault_work, cxl_handle_fault);

 init_waitqueue_head(&ctx->wq);
 spin_lock_init(&ctx->lock);

 ctx->irq_bitmap = ((void*)0);
 ctx->pending_irq = 0;
 ctx->pending_fault = 0;
 ctx->pending_afu_err = 0;

 INIT_LIST_HEAD(&ctx->irq_names);
 for (i = 0; i < CXL_IRQ_RANGES; i++)
  ctx->irqs.range[i] = 0;

 mutex_init(&ctx->status_mutex);

 ctx->status = OPENED;





 mutex_lock(&afu->contexts_lock);
 idr_preload(GFP_KERNEL);
 i = idr_alloc(&ctx->afu->contexts_idr, ctx, 0,
        ctx->afu->num_procs, GFP_NOWAIT);
 idr_preload_end();
 mutex_unlock(&afu->contexts_lock);
 if (i < 0)
  return i;

 ctx->pe = i;
 if (cpu_has_feature(CPU_FTR_HVMODE)) {
  ctx->elem = &ctx->afu->native->spa[i];
  ctx->external_pe = ctx->pe;
 } else {
  ctx->external_pe = -1;
 }
 ctx->pe_inserted = 0;





 cxl_afu_get(afu);
 return 0;
}
