
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct urb {int status; int transfer_dma; int transfer_buffer; int dev; struct ucan_urb_context* context; } ;
struct ucan_urb_context {struct ucan_priv* up; } ;
struct ucan_priv {int context_array; TYPE_2__* netdev; int echo_skb_lock; } ;
struct ucan_message_out {int dummy; } ;
struct TYPE_6__ {int tx_dropped; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int can_free_echo_skb (TYPE_2__*,struct ucan_urb_context*) ;
 int netdev_err (TYPE_2__*,char*) ;
 int netdev_warn (TYPE_2__*,char*,int ) ;
 int netif_device_present (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ucan_release_context (struct ucan_priv*,struct ucan_urb_context*) ;
 int usb_free_coherent (int ,int,int ,int ) ;

__attribute__((used)) static void ucan_write_bulk_callback(struct urb *urb)
{
 unsigned long flags;
 struct ucan_priv *up;
 struct ucan_urb_context *context = urb->context;


 if (WARN_ON_ONCE(!context))
  return;


 usb_free_coherent(urb->dev,
     sizeof(struct ucan_message_out),
     urb->transfer_buffer,
     urb->transfer_dma);

 up = context->up;
 if (WARN_ON_ONCE(!up))
  return;


 if (!netif_device_present(up->netdev))
  return;


 if (urb->status) {
  netdev_warn(up->netdev,
       "failed to transmit USB message to device: %d\n",
        urb->status);


  spin_lock_irqsave(&up->echo_skb_lock, flags);
  can_free_echo_skb(up->netdev, context - up->context_array);
  spin_unlock_irqrestore(&up->echo_skb_lock, flags);

  up->netdev->stats.tx_dropped++;


  if (!ucan_release_context(up, context))
   netdev_err(up->netdev,
       "urb failed, failed to release context\n");
 }
}
