
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct usb_8dev_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 int CAN_LED_EVENT_STOP ;
 int CAN_STATE_STOPPED ;
 int can_led_event (struct net_device*,int ) ;
 int close_candev (struct net_device*) ;
 struct usb_8dev_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_stop_queue (struct net_device*) ;
 int unlink_all_urbs (struct usb_8dev_priv*) ;
 int usb_8dev_cmd_close (struct usb_8dev_priv*) ;

__attribute__((used)) static int usb_8dev_close(struct net_device *netdev)
{
 struct usb_8dev_priv *priv = netdev_priv(netdev);
 int err = 0;


 err = usb_8dev_cmd_close(priv);
 if (err)
  netdev_warn(netdev, "couldn't stop device");

 priv->can.state = CAN_STATE_STOPPED;

 netif_stop_queue(netdev);


 unlink_all_urbs(priv);

 close_candev(netdev);

 can_led_event(netdev, CAN_LED_EVENT_STOP);

 return err;
}
