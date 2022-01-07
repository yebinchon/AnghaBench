
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct usb_8dev_rx_msg {scalar_t__ type; int flags; int dlc; int data; int id; } ;
struct usb_8dev_priv {TYPE_1__* netdev; } ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; } ;
struct can_frame {scalar_t__ can_dlc; int data; int can_id; } ;
struct TYPE_4__ {struct net_device_stats stats; } ;


 int CAN_EFF_FLAG ;
 int CAN_LED_EVENT_RX ;
 int CAN_RTR_FLAG ;
 int USB_8DEV_ERR_FLAG ;
 int USB_8DEV_EXTID ;
 int USB_8DEV_RTR ;
 scalar_t__ USB_8DEV_TYPE_CAN_FRAME ;
 scalar_t__ USB_8DEV_TYPE_ERROR_FRAME ;
 struct sk_buff* alloc_can_skb (TYPE_1__*,struct can_frame**) ;
 int be32_to_cpu (int ) ;
 int can_led_event (TYPE_1__*,int ) ;
 scalar_t__ get_can_dlc (int) ;
 int memcpy (int ,int ,scalar_t__) ;
 int netdev_warn (TYPE_1__*,char*,scalar_t__) ;
 int netif_rx (struct sk_buff*) ;
 int usb_8dev_rx_err_msg (struct usb_8dev_priv*,struct usb_8dev_rx_msg*) ;

__attribute__((used)) static void usb_8dev_rx_can_msg(struct usb_8dev_priv *priv,
    struct usb_8dev_rx_msg *msg)
{
 struct can_frame *cf;
 struct sk_buff *skb;
 struct net_device_stats *stats = &priv->netdev->stats;

 if (msg->type == USB_8DEV_TYPE_ERROR_FRAME &&
     msg->flags == USB_8DEV_ERR_FLAG) {
  usb_8dev_rx_err_msg(priv, msg);
 } else if (msg->type == USB_8DEV_TYPE_CAN_FRAME) {
  skb = alloc_can_skb(priv->netdev, &cf);
  if (!skb)
   return;

  cf->can_id = be32_to_cpu(msg->id);
  cf->can_dlc = get_can_dlc(msg->dlc & 0xF);

  if (msg->flags & USB_8DEV_EXTID)
   cf->can_id |= CAN_EFF_FLAG;

  if (msg->flags & USB_8DEV_RTR)
   cf->can_id |= CAN_RTR_FLAG;
  else
   memcpy(cf->data, msg->data, cf->can_dlc);

  stats->rx_packets++;
  stats->rx_bytes += cf->can_dlc;
  netif_rx(skb);

  can_led_event(priv->netdev, CAN_LED_EVENT_RX);
 } else {
  netdev_warn(priv->netdev, "frame type %d unknown",
    msg->type);
 }

}
