
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct net_device {int flags; int * netdev_ops; } ;
struct TYPE_4__ {int freq; } ;
struct TYPE_5__ {int ctrlmode_supported; int do_set_mode; int do_set_bittiming; int * bittiming_const; TYPE_1__ clock; int state; } ;
struct ems_usb {int intr_urb; void* intr_in_buffer; void* tx_msg_buffer; int active_params; TYPE_3__* tx_contexts; int active_tx_urbs; int tx_submitted; int rx_submitted; TYPE_2__ can; struct net_device* netdev; int udev; } ;
struct ems_cpc_msg {int dummy; } ;
struct TYPE_6__ {int echo_index; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int CAN_STATE_STOPPED ;
 scalar_t__ CPC_HEADER_SIZE ;
 int EMS_USB_ARM7_CLOCK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IFF_ECHO ;
 scalar_t__ INTR_IN_BUFFER_SIZE ;
 int MAX_TX_URBS ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_candev (int,int) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*) ;
 int ems_usb_bittiming_const ;
 int ems_usb_command_msg (struct ems_usb*,int *) ;
 int ems_usb_netdev_ops ;
 int ems_usb_set_bittiming ;
 int ems_usb_set_mode ;
 int free_candev (struct net_device*) ;
 int init_params_sja1000 (int *) ;
 int init_usb_anchor (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (void*) ;
 void* kzalloc (scalar_t__,int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct ems_usb* netdev_priv (struct net_device*) ;
 int register_candev (struct net_device*) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_free_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,struct ems_usb*) ;

__attribute__((used)) static int ems_usb_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct net_device *netdev;
 struct ems_usb *dev;
 int i, err = -ENOMEM;

 netdev = alloc_candev(sizeof(struct ems_usb), MAX_TX_URBS);
 if (!netdev) {
  dev_err(&intf->dev, "ems_usb: Couldn't alloc candev\n");
  return -ENOMEM;
 }

 dev = netdev_priv(netdev);

 dev->udev = interface_to_usbdev(intf);
 dev->netdev = netdev;

 dev->can.state = CAN_STATE_STOPPED;
 dev->can.clock.freq = EMS_USB_ARM7_CLOCK;
 dev->can.bittiming_const = &ems_usb_bittiming_const;
 dev->can.do_set_bittiming = ems_usb_set_bittiming;
 dev->can.do_set_mode = ems_usb_set_mode;
 dev->can.ctrlmode_supported = CAN_CTRLMODE_3_SAMPLES;

 netdev->netdev_ops = &ems_usb_netdev_ops;

 netdev->flags |= IFF_ECHO;

 init_usb_anchor(&dev->rx_submitted);

 init_usb_anchor(&dev->tx_submitted);
 atomic_set(&dev->active_tx_urbs, 0);

 for (i = 0; i < MAX_TX_URBS; i++)
  dev->tx_contexts[i].echo_index = MAX_TX_URBS;

 dev->intr_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->intr_urb)
  goto cleanup_candev;

 dev->intr_in_buffer = kzalloc(INTR_IN_BUFFER_SIZE, GFP_KERNEL);
 if (!dev->intr_in_buffer)
  goto cleanup_intr_urb;

 dev->tx_msg_buffer = kzalloc(CPC_HEADER_SIZE +
         sizeof(struct ems_cpc_msg), GFP_KERNEL);
 if (!dev->tx_msg_buffer)
  goto cleanup_intr_in_buffer;

 usb_set_intfdata(intf, dev);

 SET_NETDEV_DEV(netdev, &intf->dev);

 init_params_sja1000(&dev->active_params);

 err = ems_usb_command_msg(dev, &dev->active_params);
 if (err) {
  netdev_err(netdev, "couldn't initialize controller: %d\n", err);
  goto cleanup_tx_msg_buffer;
 }

 err = register_candev(netdev);
 if (err) {
  netdev_err(netdev, "couldn't register CAN device: %d\n", err);
  goto cleanup_tx_msg_buffer;
 }

 return 0;

cleanup_tx_msg_buffer:
 kfree(dev->tx_msg_buffer);

cleanup_intr_in_buffer:
 kfree(dev->intr_in_buffer);

cleanup_intr_urb:
 usb_free_urb(dev->intr_urb);

cleanup_candev:
 free_candev(netdev);

 return err;
}
