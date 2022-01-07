
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct gs_device_mode {int mode; } ;
struct gs_can {int channel; struct usb_interface* iface; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GS_CAN_MODE_RESET ;
 int GS_USB_BREQ_MODE ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct gs_device_mode*) ;
 struct gs_device_mode* kzalloc (int,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,struct gs_device_mode*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int gs_cmd_reset(struct gs_can *gsdev)
{
 struct gs_device_mode *dm;
 struct usb_interface *intf = gsdev->iface;
 int rc;

 dm = kzalloc(sizeof(*dm), GFP_KERNEL);
 if (!dm)
  return -ENOMEM;

 dm->mode = GS_CAN_MODE_RESET;

 rc = usb_control_msg(interface_to_usbdev(intf),
        usb_sndctrlpipe(interface_to_usbdev(intf), 0),
        GS_USB_BREQ_MODE,
        USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
        gsdev->channel,
        0,
        dm,
        sizeof(*dm),
        1000);

 kfree(dm);

 return rc;
}
