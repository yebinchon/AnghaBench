
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct net_device {int dev_id; int name; int * netdev_ops; int flags; } ;
struct TYPE_9__ {int freq; } ;
struct TYPE_10__ {int do_get_berr_counter; int do_set_mode; int do_set_bittiming; int * bittiming_const; int ctrlmode_supported; TYPE_4__ clock; int state; } ;
struct esd_usb2_net_priv {int index; TYPE_5__ can; struct net_device* netdev; struct esd_usb2* usb2; TYPE_1__* tx_contexts; int active_tx_jobs; int tx_submitted; } ;
struct esd_usb2 {struct esd_usb2_net_priv** nets; TYPE_3__* udev; } ;
struct TYPE_7__ {int idProduct; } ;
struct TYPE_8__ {TYPE_2__ descriptor; } ;
struct TYPE_6__ {int echo_index; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_STATE_STOPPED ;
 int ENOMEM ;
 int ESD_USB2_CAN_CLOCK ;
 int ESD_USBM_CAN_CLOCK ;
 int IFF_ECHO ;
 int MAX_TX_URBS ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 scalar_t__ USB_CANUSBM_PRODUCT_ID ;
 struct net_device* alloc_candev (int,int) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*,...) ;
 int esd_usb2_bittiming_const ;
 int esd_usb2_get_berr_counter ;
 int esd_usb2_netdev_ops ;
 int esd_usb2_set_bittiming ;
 int esd_usb2_set_mode ;
 int free_candev (struct net_device*) ;
 int init_usb_anchor (int *) ;
 scalar_t__ le16_to_cpu (int ) ;
 int netdev_info (struct net_device*,char*,int ) ;
 struct esd_usb2_net_priv* netdev_priv (struct net_device*) ;
 int register_candev (struct net_device*) ;
 struct esd_usb2* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int esd_usb2_probe_one_net(struct usb_interface *intf, int index)
{
 struct esd_usb2 *dev = usb_get_intfdata(intf);
 struct net_device *netdev;
 struct esd_usb2_net_priv *priv;
 int err = 0;
 int i;

 netdev = alloc_candev(sizeof(*priv), MAX_TX_URBS);
 if (!netdev) {
  dev_err(&intf->dev, "couldn't alloc candev\n");
  err = -ENOMEM;
  goto done;
 }

 priv = netdev_priv(netdev);

 init_usb_anchor(&priv->tx_submitted);
 atomic_set(&priv->active_tx_jobs, 0);

 for (i = 0; i < MAX_TX_URBS; i++)
  priv->tx_contexts[i].echo_index = MAX_TX_URBS;

 priv->usb2 = dev;
 priv->netdev = netdev;
 priv->index = index;

 priv->can.state = CAN_STATE_STOPPED;
 priv->can.ctrlmode_supported = CAN_CTRLMODE_LISTENONLY;

 if (le16_to_cpu(dev->udev->descriptor.idProduct) ==
     USB_CANUSBM_PRODUCT_ID)
  priv->can.clock.freq = ESD_USBM_CAN_CLOCK;
 else {
  priv->can.clock.freq = ESD_USB2_CAN_CLOCK;
  priv->can.ctrlmode_supported |= CAN_CTRLMODE_3_SAMPLES;
 }

 priv->can.bittiming_const = &esd_usb2_bittiming_const;
 priv->can.do_set_bittiming = esd_usb2_set_bittiming;
 priv->can.do_set_mode = esd_usb2_set_mode;
 priv->can.do_get_berr_counter = esd_usb2_get_berr_counter;

 netdev->flags |= IFF_ECHO;

 netdev->netdev_ops = &esd_usb2_netdev_ops;

 SET_NETDEV_DEV(netdev, &intf->dev);
 netdev->dev_id = index;

 err = register_candev(netdev);
 if (err) {
  dev_err(&intf->dev, "couldn't register CAN device: %d\n", err);
  free_candev(netdev);
  err = -ENOMEM;
  goto done;
 }

 dev->nets[index] = priv;
 netdev_info(netdev, "device %s registered\n", netdev->name);

done:
 return err;
}
