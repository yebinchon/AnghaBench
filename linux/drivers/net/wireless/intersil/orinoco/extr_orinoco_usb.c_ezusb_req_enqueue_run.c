
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_context {int state; int list; int refcount; TYPE_1__* upriv; } ;
struct ezusb_priv {int req_lock; int req_pending; } ;
struct TYPE_2__ {int udev; } ;


 int EZUSB_CTX_QUEUED ;
 int ezusb_req_queue_run (struct ezusb_priv*) ;
 int list_add_tail (int *,int *) ;
 int refcount_inc (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ezusb_req_enqueue_run(struct ezusb_priv *upriv,
      struct request_context *ctx)
{
 unsigned long flags;

 spin_lock_irqsave(&upriv->req_lock, flags);

 if (!ctx->upriv->udev) {
  spin_unlock_irqrestore(&upriv->req_lock, flags);
  goto done;
 }
 refcount_inc(&ctx->refcount);
 list_add_tail(&ctx->list, &upriv->req_pending);
 spin_unlock_irqrestore(&upriv->req_lock, flags);

 ctx->state = EZUSB_CTX_QUEUED;
 ezusb_req_queue_run(upriv);

 done:
 return;
}
