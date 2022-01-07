
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device {int dev; } ;
struct TYPE_2__ {int state; } ;
struct brcmf_usbdev_info {scalar_t__ wowl_enabled; TYPE_1__ bus_pub; } ;
typedef int pm_message_t ;


 int BRCMFMAC_USB_STATE_SLEEP ;
 int USB ;
 int brcmf_cancel_all_urbs (struct brcmf_usbdev_info*) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_detach (int *) ;
 int brcmf_free (int *) ;
 struct brcmf_usbdev_info* brcmf_usb_get_businfo (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;

__attribute__((used)) static int brcmf_usb_suspend(struct usb_interface *intf, pm_message_t state)
{
 struct usb_device *usb = interface_to_usbdev(intf);
 struct brcmf_usbdev_info *devinfo = brcmf_usb_get_businfo(&usb->dev);

 brcmf_dbg(USB, "Enter\n");
 devinfo->bus_pub.state = BRCMFMAC_USB_STATE_SLEEP;
 if (devinfo->wowl_enabled) {
  brcmf_cancel_all_urbs(devinfo);
 } else {
  brcmf_detach(&usb->dev);
  brcmf_free(&usb->dev);
 }
 return 0;
}
