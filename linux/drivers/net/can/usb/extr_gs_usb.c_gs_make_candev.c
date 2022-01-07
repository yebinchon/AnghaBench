
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct net_device {int * ethtool_ops; int flags; int * netdev_ops; } ;
struct gs_device_config {int sw_version; } ;
struct gs_device_bt_const {int feature; int fclk_can; int brp_inc; int brp_max; int brp_min; int sjw_max; int tseg2_max; int tseg2_min; int tseg1_max; int tseg1_min; } ;
struct TYPE_6__ {int freq; } ;
struct TYPE_8__ {int ctrlmode_supported; int do_set_bittiming; TYPE_3__* bittiming_const; TYPE_2__ clock; int state; } ;
struct TYPE_7__ {int brp_inc; int brp_max; int brp_min; int sjw_max; int tseg2_max; int tseg2_min; int tseg1_max; int tseg1_min; int name; } ;
struct gs_can {unsigned int channel; struct net_device* netdev; TYPE_4__ can; TYPE_3__ bt_const; TYPE_1__* tx_context; int tx_ctx_lock; int active_tx_urbs; int tx_submitted; struct usb_interface* iface; int udev; } ;
struct TYPE_5__ {int echo_id; struct gs_can* dev; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int CAN_CTRLMODE_ONE_SHOT ;
 int CAN_STATE_STOPPED ;
 int ENOMEM ;
 struct gs_can* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int GS_CAN_FEATURE_IDENTIFY ;
 int GS_CAN_FEATURE_LISTEN_ONLY ;
 int GS_CAN_FEATURE_LOOP_BACK ;
 int GS_CAN_FEATURE_ONE_SHOT ;
 int GS_CAN_FEATURE_TRIPLE_SAMPLE ;
 int GS_MAX_TX_URBS ;
 int GS_USB_BREQ_BT_CONST ;
 int IFF_ECHO ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 struct net_device* alloc_candev (int,int) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*,...) ;
 int free_candev (struct net_device*) ;
 int gs_usb_ethtool_ops ;
 int gs_usb_netdev_ops ;
 int gs_usb_set_bittiming ;
 int init_usb_anchor (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct gs_device_bt_const*) ;
 struct gs_device_bt_const* kmalloc (int,int ) ;
 struct gs_can* netdev_priv (struct net_device*) ;
 int register_candev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char*) ;
 int usb_control_msg (int ,int ,int ,int,unsigned int,int ,struct gs_device_bt_const*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static struct gs_can *gs_make_candev(unsigned int channel,
         struct usb_interface *intf,
         struct gs_device_config *dconf)
{
 struct gs_can *dev;
 struct net_device *netdev;
 int rc;
 struct gs_device_bt_const *bt_const;

 bt_const = kmalloc(sizeof(*bt_const), GFP_KERNEL);
 if (!bt_const)
  return ERR_PTR(-ENOMEM);


 rc = usb_control_msg(interface_to_usbdev(intf),
        usb_rcvctrlpipe(interface_to_usbdev(intf), 0),
        GS_USB_BREQ_BT_CONST,
        USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
        channel,
        0,
        bt_const,
        sizeof(*bt_const),
        1000);

 if (rc < 0) {
  dev_err(&intf->dev,
   "Couldn't get bit timing const for channel (err=%d)\n",
   rc);
  kfree(bt_const);
  return ERR_PTR(rc);
 }


 netdev = alloc_candev(sizeof(struct gs_can), GS_MAX_TX_URBS);
 if (!netdev) {
  dev_err(&intf->dev, "Couldn't allocate candev\n");
  kfree(bt_const);
  return ERR_PTR(-ENOMEM);
 }

 dev = netdev_priv(netdev);

 netdev->netdev_ops = &gs_usb_netdev_ops;

 netdev->flags |= IFF_ECHO;


 strcpy(dev->bt_const.name, "gs_usb");
 dev->bt_const.tseg1_min = bt_const->tseg1_min;
 dev->bt_const.tseg1_max = bt_const->tseg1_max;
 dev->bt_const.tseg2_min = bt_const->tseg2_min;
 dev->bt_const.tseg2_max = bt_const->tseg2_max;
 dev->bt_const.sjw_max = bt_const->sjw_max;
 dev->bt_const.brp_min = bt_const->brp_min;
 dev->bt_const.brp_max = bt_const->brp_max;
 dev->bt_const.brp_inc = bt_const->brp_inc;

 dev->udev = interface_to_usbdev(intf);
 dev->iface = intf;
 dev->netdev = netdev;
 dev->channel = channel;

 init_usb_anchor(&dev->tx_submitted);
 atomic_set(&dev->active_tx_urbs, 0);
 spin_lock_init(&dev->tx_ctx_lock);
 for (rc = 0; rc < GS_MAX_TX_URBS; rc++) {
  dev->tx_context[rc].dev = dev;
  dev->tx_context[rc].echo_id = GS_MAX_TX_URBS;
 }


 dev->can.state = CAN_STATE_STOPPED;
 dev->can.clock.freq = bt_const->fclk_can;
 dev->can.bittiming_const = &dev->bt_const;
 dev->can.do_set_bittiming = gs_usb_set_bittiming;

 dev->can.ctrlmode_supported = 0;

 if (bt_const->feature & GS_CAN_FEATURE_LISTEN_ONLY)
  dev->can.ctrlmode_supported |= CAN_CTRLMODE_LISTENONLY;

 if (bt_const->feature & GS_CAN_FEATURE_LOOP_BACK)
  dev->can.ctrlmode_supported |= CAN_CTRLMODE_LOOPBACK;

 if (bt_const->feature & GS_CAN_FEATURE_TRIPLE_SAMPLE)
  dev->can.ctrlmode_supported |= CAN_CTRLMODE_3_SAMPLES;

 if (bt_const->feature & GS_CAN_FEATURE_ONE_SHOT)
  dev->can.ctrlmode_supported |= CAN_CTRLMODE_ONE_SHOT;

 SET_NETDEV_DEV(netdev, &intf->dev);

 if (dconf->sw_version > 1)
  if (bt_const->feature & GS_CAN_FEATURE_IDENTIFY)
   netdev->ethtool_ops = &gs_usb_ethtool_ops;

 kfree(bt_const);

 rc = register_candev(dev->netdev);
 if (rc) {
  free_candev(dev->netdev);
  dev_err(&intf->dev, "Couldn't register candev (err=%d)\n", rc);
  return ERR_PTR(rc);
 }

 return dev;
}
