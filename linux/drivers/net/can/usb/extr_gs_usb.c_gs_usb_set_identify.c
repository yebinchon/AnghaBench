
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gs_identify_mode {int mode; } ;
struct gs_can {int channel; int iface; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GS_CAN_IDENTIFY_OFF ;
 int GS_CAN_IDENTIFY_ON ;
 int GS_USB_BREQ_IDENTIFY ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int interface_to_usbdev (int ) ;
 int kfree (struct gs_identify_mode*) ;
 struct gs_identify_mode* kmalloc (int,int ) ;
 struct gs_can* netdev_priv (struct net_device*) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,struct gs_identify_mode*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int gs_usb_set_identify(struct net_device *netdev, bool do_identify)
{
 struct gs_can *dev = netdev_priv(netdev);
 struct gs_identify_mode *imode;
 int rc;

 imode = kmalloc(sizeof(*imode), GFP_KERNEL);

 if (!imode)
  return -ENOMEM;

 if (do_identify)
  imode->mode = GS_CAN_IDENTIFY_ON;
 else
  imode->mode = GS_CAN_IDENTIFY_OFF;

 rc = usb_control_msg(interface_to_usbdev(dev->iface),
        usb_sndctrlpipe(interface_to_usbdev(dev->iface),
          0),
        GS_USB_BREQ_IDENTIFY,
        USB_DIR_OUT | USB_TYPE_VENDOR |
        USB_RECIP_INTERFACE,
        dev->channel,
        0,
        imode,
        sizeof(*imode),
        100);

 kfree(imode);

 return (rc > 0) ? 0 : rc;
}
