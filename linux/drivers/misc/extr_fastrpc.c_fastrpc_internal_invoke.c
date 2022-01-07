
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fastrpc_user {TYPE_2__* sctx; int lock; TYPE_1__* cctx; } ;
struct fastrpc_invoke_ctx {int retval; int node; scalar_t__ nscalars; int work; } ;
struct fastrpc_invoke_args {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int rpdev; } ;


 int EINVAL ;
 int EPIPE ;
 scalar_t__ IS_ERR (struct fastrpc_invoke_ctx*) ;
 int PTR_ERR (struct fastrpc_invoke_ctx*) ;
 int dev_dbg (int ,char*,int) ;
 int dma_rmb () ;
 int dma_wmb () ;
 struct fastrpc_invoke_ctx* fastrpc_context_alloc (struct fastrpc_user*,int ,int ,struct fastrpc_invoke_args*) ;
 int fastrpc_context_put (struct fastrpc_invoke_ctx*) ;
 int fastrpc_get_args (int ,struct fastrpc_invoke_ctx*) ;
 int fastrpc_invoke_send (TYPE_2__*,struct fastrpc_invoke_ctx*,int ,int ) ;
 int fastrpc_put_args (struct fastrpc_invoke_ctx*,int ) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int fastrpc_internal_invoke(struct fastrpc_user *fl, u32 kernel,
       u32 handle, u32 sc,
       struct fastrpc_invoke_args *args)
{
 struct fastrpc_invoke_ctx *ctx = ((void*)0);
 int err = 0;

 if (!fl->sctx)
  return -EINVAL;

 if (!fl->cctx->rpdev)
  return -EPIPE;

 ctx = fastrpc_context_alloc(fl, kernel, sc, args);
 if (IS_ERR(ctx))
  return PTR_ERR(ctx);

 if (ctx->nscalars) {
  err = fastrpc_get_args(kernel, ctx);
  if (err)
   goto bail;
 }


 dma_wmb();

 err = fastrpc_invoke_send(fl->sctx, ctx, kernel, handle);
 if (err)
  goto bail;


 err = wait_for_completion_interruptible(&ctx->work);
 if (err)
  goto bail;


 err = ctx->retval;
 if (err)
  goto bail;

 if (ctx->nscalars) {

  dma_rmb();

  err = fastrpc_put_args(ctx, kernel);
  if (err)
   goto bail;
 }

bail:

 spin_lock(&fl->lock);
 list_del(&ctx->node);
 spin_unlock(&fl->lock);
 fastrpc_context_put(ctx);

 if (err)
  dev_dbg(fl->sctx->dev, "Error: Invoke Failed %d\n", err);

 return err;
}
