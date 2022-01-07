
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_context {int rcu; TYPE_1__* afu; int pe; scalar_t__ mapping; scalar_t__ kernelapi; } ;
struct TYPE_2__ {int contexts_lock; int contexts_idr; } ;


 int call_rcu (int *,int ) ;
 int cxl_release_mapping (struct cxl_context*) ;
 int idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reclaim_ctx ;

void cxl_context_free(struct cxl_context *ctx)
{
 if (ctx->kernelapi && ctx->mapping)
  cxl_release_mapping(ctx);
 mutex_lock(&ctx->afu->contexts_lock);
 idr_remove(&ctx->afu->contexts_idr, ctx->pe);
 mutex_unlock(&ctx->afu->contexts_lock);
 call_rcu(&ctx->rcu, reclaim_ctx);
}
