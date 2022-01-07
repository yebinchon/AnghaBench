
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct ocxl_context {scalar_t__ status; int status_mutex; int tidr; int pasid; TYPE_3__* afu; } ;
struct TYPE_4__ {unsigned long id; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_6__ {TYPE_2__* fn; } ;
struct TYPE_5__ {int link; } ;


 scalar_t__ ATTACHED ;
 int EIO ;
 scalar_t__ OPENED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocxl_link_add_pe (int ,int ,unsigned long,int ,int ,struct mm_struct*,int ,struct ocxl_context*) ;
 int xsl_fault_error ;

int ocxl_context_attach(struct ocxl_context *ctx, u64 amr, struct mm_struct *mm)
{
 int rc;
 unsigned long pidr = 0;


 mutex_lock(&ctx->status_mutex);
 if (ctx->status != OPENED) {
  rc = -EIO;
  goto out;
 }

 if (mm)
  pidr = mm->context.id;

 rc = ocxl_link_add_pe(ctx->afu->fn->link, ctx->pasid, pidr, ctx->tidr,
         amr, mm, xsl_fault_error, ctx);
 if (rc)
  goto out;

 ctx->status = ATTACHED;
out:
 mutex_unlock(&ctx->status_mutex);
 return rc;
}
