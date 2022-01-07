
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_5__ {int iProduct; } ;
struct usb_device {int dev; TYPE_1__ descriptor; } ;
struct TYPE_6__ {int freq; } ;
struct TYPE_7__ {int ctrlmode_supported; int do_get_berr_counter; int do_set_mode; int * bittiming_const; TYPE_2__ clock; int state; } ;
struct usb_8dev_priv {struct net_device* netdev; int usb_8dev_cmd_lock; int cmd_msg_buffer; TYPE_4__* tx_contexts; int active_tx_urbs; int tx_submitted; int rx_submitted; TYPE_3__ can; struct usb_device* udev; } ;
struct usb_8dev_cmd_msg {int dummy; } ;
struct net_device {int flags; int * netdev_ops; } ;
typedef int buf ;
struct TYPE_8__ {int echo_index; } ;


 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int CAN_CTRLMODE_ONE_SHOT ;
 int CAN_STATE_STOPPED ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IFF_ECHO ;
 int MAX_TX_URBS ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int USB_8DEV_ABP_CLOCK ;
 struct net_device* alloc_candev (int,int) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int devm_can_led_init (struct net_device*) ;
 int devm_kzalloc (int *,int,int ) ;
 int free_candev (struct net_device*) ;
 int init_usb_anchor (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int mutex_init (int *) ;
 int netdev_err (struct net_device*,char*,...) ;
 int netdev_info (struct net_device*,char*,int,int,int,int) ;
 struct usb_8dev_priv* netdev_priv (struct net_device*) ;
 int register_candev (struct net_device*) ;
 scalar_t__ strcmp (char*,char*) ;
 int unregister_netdev (struct net_device*) ;
 int usb_8dev_bittiming_const ;
 int usb_8dev_cmd_version (struct usb_8dev_priv*,int*) ;
 int usb_8dev_get_berr_counter ;
 int usb_8dev_netdev_ops ;
 int usb_8dev_set_mode ;
 int usb_set_intfdata (struct usb_interface*,struct usb_8dev_priv*) ;
 scalar_t__ usb_string (struct usb_device*,int ,char*,int) ;

__attribute__((used)) static int usb_8dev_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct net_device *netdev;
 struct usb_8dev_priv *priv;
 int i, err = -ENOMEM;
 u32 version;
 char buf[18];
 struct usb_device *usbdev = interface_to_usbdev(intf);


 if (usb_string(usbdev, usbdev->descriptor.iProduct, buf,
         sizeof(buf)) > 0 && strcmp(buf, "USB2CAN converter")) {
  dev_info(&usbdev->dev, "ignoring: not an USB2CAN converter\n");
  return -ENODEV;
 }

 netdev = alloc_candev(sizeof(struct usb_8dev_priv), MAX_TX_URBS);
 if (!netdev) {
  dev_err(&intf->dev, "Couldn't alloc candev\n");
  return -ENOMEM;
 }

 priv = netdev_priv(netdev);

 priv->udev = usbdev;
 priv->netdev = netdev;

 priv->can.state = CAN_STATE_STOPPED;
 priv->can.clock.freq = USB_8DEV_ABP_CLOCK;
 priv->can.bittiming_const = &usb_8dev_bittiming_const;
 priv->can.do_set_mode = usb_8dev_set_mode;
 priv->can.do_get_berr_counter = usb_8dev_get_berr_counter;
 priv->can.ctrlmode_supported = CAN_CTRLMODE_LOOPBACK |
          CAN_CTRLMODE_LISTENONLY |
          CAN_CTRLMODE_ONE_SHOT;

 netdev->netdev_ops = &usb_8dev_netdev_ops;

 netdev->flags |= IFF_ECHO;

 init_usb_anchor(&priv->rx_submitted);

 init_usb_anchor(&priv->tx_submitted);
 atomic_set(&priv->active_tx_urbs, 0);

 for (i = 0; i < MAX_TX_URBS; i++)
  priv->tx_contexts[i].echo_index = MAX_TX_URBS;

 priv->cmd_msg_buffer = devm_kzalloc(&intf->dev, sizeof(struct usb_8dev_cmd_msg),
         GFP_KERNEL);
 if (!priv->cmd_msg_buffer)
  goto cleanup_candev;

 usb_set_intfdata(intf, priv);

 SET_NETDEV_DEV(netdev, &intf->dev);

 mutex_init(&priv->usb_8dev_cmd_lock);

 err = register_candev(netdev);
 if (err) {
  netdev_err(netdev,
   "couldn't register CAN device: %d\n", err);
  goto cleanup_candev;
 }

 err = usb_8dev_cmd_version(priv, &version);
 if (err) {
  netdev_err(netdev, "can't get firmware version\n");
  goto cleanup_unregister_candev;
 } else {
  netdev_info(netdev,
    "firmware: %d.%d, hardware: %d.%d\n",
    (version>>24) & 0xff, (version>>16) & 0xff,
    (version>>8) & 0xff, version & 0xff);
 }

 devm_can_led_init(netdev);

 return 0;

cleanup_unregister_candev:
 unregister_netdev(priv->netdev);

cleanup_candev:
 free_candev(netdev);

 return err;

}
