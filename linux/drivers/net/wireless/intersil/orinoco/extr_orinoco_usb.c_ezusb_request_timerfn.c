
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct request_context {int killed; int refcount; TYPE_2__* outurb; int state; } ;
struct TYPE_4__ {TYPE_1__* dev; int transfer_flags; } ;
struct TYPE_3__ {int dev; } ;


 int EINPROGRESS ;
 int EZUSB_CTX_REQ_TIMEOUT ;
 int EZUSB_CTX_RESP_TIMEOUT ;
 int URB_ASYNC_UNLINK ;
 struct request_context* ctx ;
 int dev_dbg (int *,char*) ;
 int ezusb_ctx_complete (struct request_context*) ;
 int ezusb_request_context_put (struct request_context*) ;
 struct request_context* from_timer (int ,struct timer_list*,int ) ;
 int refcount_inc (int *) ;
 int timer ;
 int usb_unlink_urb (TYPE_2__*) ;

__attribute__((used)) static void ezusb_request_timerfn(struct timer_list *t)
{
 struct request_context *ctx = from_timer(ctx, t, timer);

 ctx->outurb->transfer_flags |= URB_ASYNC_UNLINK;
 if (usb_unlink_urb(ctx->outurb) == -EINPROGRESS) {
  ctx->state = EZUSB_CTX_REQ_TIMEOUT;
 } else {
  ctx->state = EZUSB_CTX_RESP_TIMEOUT;
  dev_dbg(&ctx->outurb->dev->dev, "couldn't unlink\n");
  refcount_inc(&ctx->refcount);
  ctx->killed = 1;
  ezusb_ctx_complete(ctx);
  ezusb_request_context_put(ctx);
 }
}
