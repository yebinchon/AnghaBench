
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef struct ucan_urb_context* u8 ;
struct urb {int dummy; } ;
struct ucan_urb_context {int dummy; } ;
struct ucan_priv {int context_array; TYPE_2__* netdev; int echo_skb_lock; int tx_urbs; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct can_frame {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_7__ {int tx_dropped; } ;
struct TYPE_8__ {TYPE_1__ stats; } ;


 int ENODEV ;
 int GFP_ATOMIC ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int can_free_echo_skb (TYPE_2__*,struct ucan_urb_context*) ;
 int can_put_echo_skb (struct sk_buff*,TYPE_2__*,struct ucan_urb_context*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int netdev_err (TYPE_2__*,char*) ;
 struct ucan_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (TYPE_2__*,char*,int) ;
 int netif_device_detach (TYPE_2__*) ;
 int netif_trans_update (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ucan_urb_context* ucan_alloc_context (struct ucan_priv*) ;
 int ucan_clean_up_tx_urb (struct ucan_priv*,struct urb*) ;
 struct urb* ucan_prepare_tx_urb (struct ucan_priv*,struct ucan_urb_context*,struct can_frame*,struct ucan_urb_context*) ;
 int ucan_release_context (struct ucan_priv*,struct ucan_urb_context*) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_free_urb (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static netdev_tx_t ucan_start_xmit(struct sk_buff *skb,
       struct net_device *netdev)
{
 unsigned long flags;
 int ret;
 u8 echo_index;
 struct urb *urb;
 struct ucan_urb_context *context;
 struct ucan_priv *up = netdev_priv(netdev);
 struct can_frame *cf = (struct can_frame *)skb->data;


 if (can_dropped_invalid_skb(netdev, skb))
  return NETDEV_TX_OK;


 context = ucan_alloc_context(up);
 echo_index = context - up->context_array;

 if (WARN_ON_ONCE(!context))
  return NETDEV_TX_BUSY;


 urb = ucan_prepare_tx_urb(up, context, cf, echo_index);
 if (!urb)
  goto drop;


 spin_lock_irqsave(&up->echo_skb_lock, flags);
 can_put_echo_skb(skb, up->netdev, echo_index);
 spin_unlock_irqrestore(&up->echo_skb_lock, flags);


 usb_anchor_urb(urb, &up->tx_urbs);
 ret = usb_submit_urb(urb, GFP_ATOMIC);


 if (ret) {

  usb_unanchor_urb(urb);
  ucan_clean_up_tx_urb(up, urb);
  if (!ucan_release_context(up, context))
   netdev_err(up->netdev,
       "xmit err: failed to release context\n");




  spin_lock_irqsave(&up->echo_skb_lock, flags);
  can_free_echo_skb(up->netdev, echo_index);
  spin_unlock_irqrestore(&up->echo_skb_lock, flags);

  if (ret == -ENODEV) {
   netif_device_detach(up->netdev);
  } else {
   netdev_warn(up->netdev,
        "xmit err: failed to submit urb %d\n",
        ret);
   up->netdev->stats.tx_dropped++;
  }
  return NETDEV_TX_OK;
 }

 netif_trans_update(netdev);


 usb_free_urb(urb);

 return NETDEV_TX_OK;

drop:
 if (!ucan_release_context(up, context))
  netdev_err(up->netdev,
      "xmit drop: failed to release context\n");
 dev_kfree_skb(skb);
 up->netdev->stats.tx_dropped++;

 return NETDEV_TX_OK;
}
