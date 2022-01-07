
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct request_context {int timer; int done; int refcount; void* in_rid; void* out_rid; int state; struct ezusb_priv* upriv; struct request_context* buf; int outurb; } ;
struct ezusb_priv {int dummy; } ;


 int BULK_BUF_SIZE ;
 int EZUSB_CTX_START ;
 int GFP_ATOMIC ;
 int ezusb_request_timerfn ;
 int init_completion (int *) ;
 int kfree (struct request_context*) ;
 struct request_context* kmalloc (int ,int ) ;
 struct request_context* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int timer_setup (int *,int ,int ) ;
 int usb_alloc_urb (int ,int ) ;

__attribute__((used)) static struct request_context *ezusb_alloc_ctx(struct ezusb_priv *upriv,
            u16 out_rid, u16 in_rid)
{
 struct request_context *ctx;

 ctx = kzalloc(sizeof(*ctx), GFP_ATOMIC);
 if (!ctx)
  return ((void*)0);

 ctx->buf = kmalloc(BULK_BUF_SIZE, GFP_ATOMIC);
 if (!ctx->buf) {
  kfree(ctx);
  return ((void*)0);
 }
 ctx->outurb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!ctx->outurb) {
  kfree(ctx->buf);
  kfree(ctx);
  return ((void*)0);
 }

 ctx->upriv = upriv;
 ctx->state = EZUSB_CTX_START;
 ctx->out_rid = out_rid;
 ctx->in_rid = in_rid;

 refcount_set(&ctx->refcount, 1);
 init_completion(&ctx->done);

 timer_setup(&ctx->timer, ezusb_request_timerfn, 0);
 return ctx;
}
