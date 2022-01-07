
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct gs_device_bittiming {int brp; int sjw; int phase_seg2; int phase_seg1; int prop_seg; } ;
struct can_bittiming {int brp; int sjw; int phase_seg2; int phase_seg1; int prop_seg; } ;
struct TYPE_3__ {struct can_bittiming bittiming; } ;
struct gs_can {int channel; struct usb_interface* iface; TYPE_1__ can; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GS_USB_BREQ_BITTIMING ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int ,char*,int) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct gs_device_bittiming*) ;
 struct gs_device_bittiming* kmalloc (int,int ) ;
 struct gs_can* netdev_priv (struct net_device*) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,struct gs_device_bittiming*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int gs_usb_set_bittiming(struct net_device *netdev)
{
 struct gs_can *dev = netdev_priv(netdev);
 struct can_bittiming *bt = &dev->can.bittiming;
 struct usb_interface *intf = dev->iface;
 int rc;
 struct gs_device_bittiming *dbt;

 dbt = kmalloc(sizeof(*dbt), GFP_KERNEL);
 if (!dbt)
  return -ENOMEM;

 dbt->prop_seg = bt->prop_seg;
 dbt->phase_seg1 = bt->phase_seg1;
 dbt->phase_seg2 = bt->phase_seg2;
 dbt->sjw = bt->sjw;
 dbt->brp = bt->brp;


 rc = usb_control_msg(interface_to_usbdev(intf),
        usb_sndctrlpipe(interface_to_usbdev(intf), 0),
        GS_USB_BREQ_BITTIMING,
        USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
        dev->channel,
        0,
        dbt,
        sizeof(*dbt),
        1000);

 kfree(dbt);

 if (rc < 0)
  dev_err(netdev->dev.parent, "Couldn't set bittimings (err=%d)",
   rc);

 return (rc > 0) ? 0 : rc;
}
