
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fastrpc_user {int lock; int pending; int tgid; struct fastrpc_channel_ctx* cctx; } ;
struct fastrpc_invoke_ctx {int retval; int ctxid; struct fastrpc_invoke_ctx* olaps; struct fastrpc_invoke_ctx* maps; int node; int refcount; int put_work; int work; struct fastrpc_channel_ctx* cctx; int tgid; int pid; int sc; struct fastrpc_invoke_args* args; scalar_t__ nscalars; scalar_t__ nbufs; struct fastrpc_user* fl; } ;
struct fastrpc_invoke_args {int dummy; } ;
struct fastrpc_channel_ctx {int lock; int ctx_idr; } ;
struct TYPE_2__ {int pid; } ;


 int ENOMEM ;
 struct fastrpc_invoke_ctx* ERR_PTR (int) ;
 int FASTRPC_CTX_MAX ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ REMOTE_SCALARS_INBUFS (int ) ;
 scalar_t__ REMOTE_SCALARS_LENGTH (int ) ;
 scalar_t__ REMOTE_SCALARS_OUTBUFS (int ) ;
 TYPE_1__* current ;
 int fastrpc_channel_ctx_get (struct fastrpc_channel_ctx*) ;
 int fastrpc_channel_ctx_put (struct fastrpc_channel_ctx*) ;
 int fastrpc_context_put_wq ;
 int fastrpc_get_buff_overlaps (struct fastrpc_invoke_ctx*) ;
 int idr_alloc_cyclic (int *,struct fastrpc_invoke_ctx*,int,int ,int ) ;
 int init_completion (int *) ;
 void* kcalloc (scalar_t__,int,int ) ;
 int kfree (struct fastrpc_invoke_ctx*) ;
 int kref_init (int *) ;
 struct fastrpc_invoke_ctx* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct fastrpc_invoke_ctx *fastrpc_context_alloc(
   struct fastrpc_user *user, u32 kernel, u32 sc,
   struct fastrpc_invoke_args *args)
{
 struct fastrpc_channel_ctx *cctx = user->cctx;
 struct fastrpc_invoke_ctx *ctx = ((void*)0);
 unsigned long flags;
 int ret;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&ctx->node);
 ctx->fl = user;
 ctx->nscalars = REMOTE_SCALARS_LENGTH(sc);
 ctx->nbufs = REMOTE_SCALARS_INBUFS(sc) +
       REMOTE_SCALARS_OUTBUFS(sc);

 if (ctx->nscalars) {
  ctx->maps = kcalloc(ctx->nscalars,
        sizeof(*ctx->maps), GFP_KERNEL);
  if (!ctx->maps) {
   kfree(ctx);
   return ERR_PTR(-ENOMEM);
  }
  ctx->olaps = kcalloc(ctx->nscalars,
        sizeof(*ctx->olaps), GFP_KERNEL);
  if (!ctx->olaps) {
   kfree(ctx->maps);
   kfree(ctx);
   return ERR_PTR(-ENOMEM);
  }
  ctx->args = args;
  fastrpc_get_buff_overlaps(ctx);
 }


 fastrpc_channel_ctx_get(cctx);

 ctx->sc = sc;
 ctx->retval = -1;
 ctx->pid = current->pid;
 ctx->tgid = user->tgid;
 ctx->cctx = cctx;
 init_completion(&ctx->work);
 INIT_WORK(&ctx->put_work, fastrpc_context_put_wq);

 spin_lock(&user->lock);
 list_add_tail(&ctx->node, &user->pending);
 spin_unlock(&user->lock);

 spin_lock_irqsave(&cctx->lock, flags);
 ret = idr_alloc_cyclic(&cctx->ctx_idr, ctx, 1,
          FASTRPC_CTX_MAX, GFP_ATOMIC);
 if (ret < 0) {
  spin_unlock_irqrestore(&cctx->lock, flags);
  goto err_idr;
 }
 ctx->ctxid = ret << 4;
 spin_unlock_irqrestore(&cctx->lock, flags);

 kref_init(&ctx->refcount);

 return ctx;
err_idr:
 spin_lock(&user->lock);
 list_del(&ctx->node);
 spin_unlock(&user->lock);
 fastrpc_channel_ctx_put(cctx);
 kfree(ctx->maps);
 kfree(ctx->olaps);
 kfree(ctx);

 return ERR_PTR(ret);
}
