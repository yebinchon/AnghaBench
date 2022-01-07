
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_context {int state; int done; int out_rid; int list; struct ezusb_priv* upriv; } ;
struct net_device_stats {int tx_packets; int tx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct ezusb_priv {scalar_t__ udev; int req_lock; struct net_device* dev; } ;







 int EZUSB_RID_TX ;
 int err (char*) ;
 int ezusb_complete_all (int *) ;
 int ezusb_req_queue_run (struct ezusb_priv*) ;
 int ezusb_request_context_put (struct request_context*) ;
 int list_del_init (int *) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ezusb_ctx_complete(struct request_context *ctx)
{
 struct ezusb_priv *upriv = ctx->upriv;
 unsigned long flags;

 spin_lock_irqsave(&upriv->req_lock, flags);

 list_del_init(&ctx->list);
 if (upriv->udev) {
  spin_unlock_irqrestore(&upriv->req_lock, flags);
  ezusb_req_queue_run(upriv);
  spin_lock_irqsave(&upriv->req_lock, flags);
 }

 switch (ctx->state) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  spin_unlock_irqrestore(&upriv->req_lock, flags);

  if ((ctx->out_rid == EZUSB_RID_TX) && upriv->dev) {
   struct net_device *dev = upriv->dev;
   struct net_device_stats *stats = &dev->stats;

   if (ctx->state != 132)
    stats->tx_errors++;
   else
    stats->tx_packets++;

   netif_wake_queue(dev);
  }
  ezusb_complete_all(&ctx->done);
  ezusb_request_context_put(ctx);
  break;

 default:
  spin_unlock_irqrestore(&upriv->req_lock, flags);
  if (!upriv->udev) {


   err("Called, CTX not terminating, but device gone");
   ezusb_complete_all(&ctx->done);
   ezusb_request_context_put(ctx);
   break;
  }

  err("Called, CTX not in terminating state.");





  break;
 }
}
