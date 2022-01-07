
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcba_usb_ctx {scalar_t__ ndx; int can; scalar_t__ dlc; } ;
struct mcba_priv {int netdev; int free_ctx_cnt; struct mcba_usb_ctx* tx_context; } ;
struct can_frame {scalar_t__ can_dlc; } ;


 scalar_t__ MCBA_CTX_FREE ;
 int MCBA_MAX_TX_URBS ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int netif_stop_queue (int ) ;

__attribute__((used)) static inline struct mcba_usb_ctx *mcba_usb_get_free_ctx(struct mcba_priv *priv,
        struct can_frame *cf)
{
 int i = 0;
 struct mcba_usb_ctx *ctx = ((void*)0);

 for (i = 0; i < MCBA_MAX_TX_URBS; i++) {
  if (priv->tx_context[i].ndx == MCBA_CTX_FREE) {
   ctx = &priv->tx_context[i];
   ctx->ndx = i;

   if (cf) {
    ctx->can = 1;
    ctx->dlc = cf->can_dlc;
   } else {
    ctx->can = 0;
    ctx->dlc = 0;
   }

   atomic_dec(&priv->free_ctx_cnt);
   break;
  }
 }

 if (!atomic_read(&priv->free_ctx_cnt))

  netif_stop_queue(priv->netdev);

 return ctx;
}
