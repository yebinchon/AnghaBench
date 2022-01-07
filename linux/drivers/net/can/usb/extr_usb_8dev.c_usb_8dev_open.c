
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_8dev_priv {int netdev; } ;
struct net_device {int dummy; } ;


 int CAN_LED_EVENT_OPEN ;
 int ENODEV ;
 int can_led_event (struct net_device*,int ) ;
 int close_candev (struct net_device*) ;
 struct usb_8dev_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int netif_device_detach (int ) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int usb_8dev_start (struct usb_8dev_priv*) ;

__attribute__((used)) static int usb_8dev_open(struct net_device *netdev)
{
 struct usb_8dev_priv *priv = netdev_priv(netdev);
 int err;


 err = open_candev(netdev);
 if (err)
  return err;

 can_led_event(netdev, CAN_LED_EVENT_OPEN);


 err = usb_8dev_start(priv);
 if (err) {
  if (err == -ENODEV)
   netif_device_detach(priv->netdev);

  netdev_warn(netdev, "couldn't start device: %d\n",
    err);

  close_candev(netdev);

  return err;
 }

 netif_start_queue(netdev);

 return 0;
}
