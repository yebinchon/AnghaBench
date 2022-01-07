
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ status; struct request_context* context; } ;
struct request_context {int state; int timer; int in_rid; scalar_t__ killed; struct ezusb_priv* upriv; } ;
struct ezusb_priv {int req_lock; } ;
typedef enum ezusb_state { ____Placeholder_ezusb_state } ezusb_state ;


 scalar_t__ DEF_TIMEOUT ;
 int EZUSB_CTX_COMPLETE ;
 int EZUSB_CTX_REQ_COMPLETE ;




 int del_timer (int *) ;
 int err (char*,int,scalar_t__) ;
 int ezusb_ctx_complete (struct request_context*) ;
 int ezusb_mod_timer (struct ezusb_priv*,int *,scalar_t__) ;
 int ezusb_request_context_put (struct request_context*) ;
 scalar_t__ jiffies ;
 int pr_warn (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ezusb_request_out_callback(struct urb *urb)
{
 unsigned long flags;
 enum ezusb_state state;
 struct request_context *ctx = urb->context;
 struct ezusb_priv *upriv = ctx->upriv;

 spin_lock_irqsave(&upriv->req_lock, flags);

 del_timer(&ctx->timer);

 if (ctx->killed) {
  spin_unlock_irqrestore(&upriv->req_lock, flags);
  pr_warn("interrupt called with dead ctx\n");
  goto out;
 }

 state = ctx->state;

 if (urb->status == 0) {
  switch (state) {
  case 130:
   if (ctx->in_rid) {
    ctx->state = EZUSB_CTX_REQ_COMPLETE;

    ezusb_mod_timer(upriv, &ctx->timer,
      jiffies + DEF_TIMEOUT);
    spin_unlock_irqrestore(&upriv->req_lock,
             flags);
    break;
   }

  case 128:

   ctx->state = EZUSB_CTX_COMPLETE;
   spin_unlock_irqrestore(&upriv->req_lock, flags);
   ezusb_ctx_complete(ctx);
   break;

  default:
   spin_unlock_irqrestore(&upriv->req_lock, flags);
   err("Unexpected state(0x%x, %d) in OUT URB",
       state, urb->status);
   break;
  }
 } else {



  switch (state) {
  case 130:
  case 128:
   ctx->state = 131;


  case 131:
  case 129:
   spin_unlock_irqrestore(&upriv->req_lock, flags);

   ezusb_ctx_complete(ctx);
   break;

  default:
   spin_unlock_irqrestore(&upriv->req_lock, flags);

   err("Unexpected state(0x%x, %d) in OUT URB",
       state, urb->status);
   break;
  }
 }
 out:
 ezusb_request_context_put(ctx);
}
