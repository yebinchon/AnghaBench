
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_sste {void* esid_data; void* vsid_data; } ;
struct cxl_context {int sstp; int sste_lock; } ;
struct copro_slb {int esid; int vsid; } ;


 void* cpu_to_be64 (int ) ;
 struct cxl_sste* find_free_sste (struct cxl_context*,struct copro_slb*) ;
 int pr_devel (char*,struct cxl_sste*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_cxl_ste_write (struct cxl_context*,struct cxl_sste*,int ,int ) ;

__attribute__((used)) static void cxl_load_segment(struct cxl_context *ctx, struct copro_slb *slb)
{

 struct cxl_sste *sste;
 unsigned long flags;

 spin_lock_irqsave(&ctx->sste_lock, flags);
 sste = find_free_sste(ctx, slb);
 if (!sste)
  goto out_unlock;

 pr_devel("CXL Populating SST[%li]: %#llx %#llx\n",
   sste - ctx->sstp, slb->vsid, slb->esid);
 trace_cxl_ste_write(ctx, sste - ctx->sstp, slb->esid, slb->vsid);

 sste->vsid_data = cpu_to_be64(slb->vsid);
 sste->esid_data = cpu_to_be64(slb->esid);
out_unlock:
 spin_unlock_irqrestore(&ctx->sste_lock, flags);
}
