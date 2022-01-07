
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpmsg_device {int dev; } ;
struct fastrpc_invoke_rsp {int ctx; int retval; } ;
struct fastrpc_invoke_ctx {int put_work; int work; int retval; } ;
struct fastrpc_channel_ctx {int lock; int ctx_idr; } ;


 int EINVAL ;
 int ENOENT ;
 int FASTRPC_CTXID_MASK ;
 int complete (int *) ;
 int dev_err (int *,char*) ;
 struct fastrpc_channel_ctx* dev_get_drvdata (int *) ;
 struct fastrpc_invoke_ctx* idr_find (int *,unsigned long) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fastrpc_rpmsg_callback(struct rpmsg_device *rpdev, void *data,
      int len, void *priv, u32 addr)
{
 struct fastrpc_channel_ctx *cctx = dev_get_drvdata(&rpdev->dev);
 struct fastrpc_invoke_rsp *rsp = data;
 struct fastrpc_invoke_ctx *ctx;
 unsigned long flags;
 unsigned long ctxid;

 if (len < sizeof(*rsp))
  return -EINVAL;

 ctxid = ((rsp->ctx & FASTRPC_CTXID_MASK) >> 4);

 spin_lock_irqsave(&cctx->lock, flags);
 ctx = idr_find(&cctx->ctx_idr, ctxid);
 spin_unlock_irqrestore(&cctx->lock, flags);

 if (!ctx) {
  dev_err(&rpdev->dev, "No context ID matches response\n");
  return -ENOENT;
 }

 ctx->retval = rsp->retval;
 complete(&ctx->work);






 schedule_work(&ctx->put_work);

 return 0;
}
