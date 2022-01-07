
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct brcmf_usbdev_info {TYPE_1__ bus_pub; } ;


 scalar_t__ BRCMFMAC_USB_STATE_DOWN ;
 int USB ;
 int brcmf_cancel_all_urbs (struct brcmf_usbdev_info*) ;
 int brcmf_dbg (int ,char*) ;
 struct brcmf_usbdev_info* brcmf_usb_get_businfo (struct device*) ;
 int brcmf_usb_state_change (struct brcmf_usbdev_info*,scalar_t__) ;

__attribute__((used)) static void brcmf_usb_down(struct device *dev)
{
 struct brcmf_usbdev_info *devinfo = brcmf_usb_get_businfo(dev);

 brcmf_dbg(USB, "Enter\n");
 if (devinfo == ((void*)0))
  return;

 if (devinfo->bus_pub.state == BRCMFMAC_USB_STATE_DOWN)
  return;

 brcmf_usb_state_change(devinfo, BRCMFMAC_USB_STATE_DOWN);

 brcmf_cancel_all_urbs(devinfo);
}
