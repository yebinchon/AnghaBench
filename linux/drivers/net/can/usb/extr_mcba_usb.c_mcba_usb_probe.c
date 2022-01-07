
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct net_device {int flags; int * netdev_ops; } ;
struct TYPE_2__ {int do_set_bittiming; int do_get_berr_counter; int do_set_mode; int do_set_termination; void* bitrate_const_cnt; void* bitrate_const; void* termination_const_cnt; void* termination_const; int state; } ;
struct mcba_priv {int usb_ka_first_pass; int can_ka_first_pass; int can_speed_check; struct net_device* netdev; TYPE_1__ can; int tx_submitted; int rx_submitted; struct usb_device* udev; } ;


 void* ARRAY_SIZE (void*) ;
 int CAN_STATE_STOPPED ;
 int ENODEV ;
 int ENOMEM ;
 int IFF_ECHO ;
 int MCBA_MAX_TX_URBS ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_candev (int,int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int devm_can_led_init (struct net_device*) ;
 int free_candev (struct net_device*) ;
 int init_usb_anchor (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 void* mcba_bitrate ;
 int mcba_net_get_berr_counter ;
 int mcba_net_set_bittiming ;
 int mcba_net_set_mode ;
 int mcba_netdev_ops ;
 int mcba_set_termination ;
 void* mcba_termination ;
 int mcba_usb_start (struct mcba_priv*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct mcba_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int netif_device_detach (struct net_device*) ;
 int register_candev (struct net_device*) ;
 int unregister_candev (struct net_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct mcba_priv*) ;

__attribute__((used)) static int mcba_usb_probe(struct usb_interface *intf,
     const struct usb_device_id *id)
{
 struct net_device *netdev;
 struct mcba_priv *priv;
 int err = -ENOMEM;
 struct usb_device *usbdev = interface_to_usbdev(intf);

 netdev = alloc_candev(sizeof(struct mcba_priv), MCBA_MAX_TX_URBS);
 if (!netdev) {
  dev_err(&intf->dev, "Couldn't alloc candev\n");
  return -ENOMEM;
 }

 priv = netdev_priv(netdev);

 priv->udev = usbdev;
 priv->netdev = netdev;
 priv->usb_ka_first_pass = 1;
 priv->can_ka_first_pass = 1;
 priv->can_speed_check = 0;

 init_usb_anchor(&priv->rx_submitted);
 init_usb_anchor(&priv->tx_submitted);

 usb_set_intfdata(intf, priv);


 priv->can.state = CAN_STATE_STOPPED;
 priv->can.termination_const = mcba_termination;
 priv->can.termination_const_cnt = ARRAY_SIZE(mcba_termination);
 priv->can.bitrate_const = mcba_bitrate;
 priv->can.bitrate_const_cnt = ARRAY_SIZE(mcba_bitrate);

 priv->can.do_set_termination = mcba_set_termination;
 priv->can.do_set_mode = mcba_net_set_mode;
 priv->can.do_get_berr_counter = mcba_net_get_berr_counter;
 priv->can.do_set_bittiming = mcba_net_set_bittiming;

 netdev->netdev_ops = &mcba_netdev_ops;

 netdev->flags |= IFF_ECHO;

 SET_NETDEV_DEV(netdev, &intf->dev);

 err = register_candev(netdev);
 if (err) {
  netdev_err(netdev, "couldn't register CAN device: %d\n", err);

  goto cleanup_free_candev;
 }

 devm_can_led_init(netdev);


 err = mcba_usb_start(priv);
 if (err) {
  if (err == -ENODEV)
   netif_device_detach(priv->netdev);

  netdev_warn(netdev, "couldn't start device: %d\n", err);

  goto cleanup_unregister_candev;
 }

 dev_info(&intf->dev, "Microchip CAN BUS Analyzer connected\n");

 return 0;

cleanup_unregister_candev:
 unregister_candev(priv->netdev);

cleanup_free_candev:
 free_candev(netdev);

 return err;
}
