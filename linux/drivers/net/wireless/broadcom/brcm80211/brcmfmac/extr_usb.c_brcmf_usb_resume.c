
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device {int dev; } ;
struct TYPE_2__ {int state; } ;
struct brcmf_usbdev_info {TYPE_1__ bus_pub; int dev; int settings; int wowl_enabled; } ;


 int BRCMFMAC_USB_STATE_UP ;
 int USB ;
 int brcmf_alloc (int *,int ) ;
 int brcmf_attach (int ) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_free (int ) ;
 struct brcmf_usbdev_info* brcmf_usb_get_businfo (int *) ;
 int brcmf_usb_rx_fill_all (struct brcmf_usbdev_info*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;

__attribute__((used)) static int brcmf_usb_resume(struct usb_interface *intf)
{
 struct usb_device *usb = interface_to_usbdev(intf);
 struct brcmf_usbdev_info *devinfo = brcmf_usb_get_businfo(&usb->dev);

 brcmf_dbg(USB, "Enter\n");
 if (!devinfo->wowl_enabled) {
  int err;

  err = brcmf_alloc(&usb->dev, devinfo->settings);
  if (err)
   return err;

  err = brcmf_attach(devinfo->dev);
  if (err) {
   brcmf_free(devinfo->dev);
   return err;
  }
 }

 devinfo->bus_pub.state = BRCMFMAC_USB_STATE_UP;
 brcmf_usb_rx_fill_all(devinfo);
 return 0;
}
