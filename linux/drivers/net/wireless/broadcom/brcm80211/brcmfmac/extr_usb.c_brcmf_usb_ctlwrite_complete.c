
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; scalar_t__ context; } ;
struct brcmf_usbdev_info {int dummy; } ;


 int BRCMF_USB_CBCTL_WRITE ;
 int USB ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_usb_ctl_complete (struct brcmf_usbdev_info*,int ,int ) ;

__attribute__((used)) static void
brcmf_usb_ctlwrite_complete(struct urb *urb)
{
 struct brcmf_usbdev_info *devinfo =
  (struct brcmf_usbdev_info *)urb->context;

 brcmf_dbg(USB, "Enter\n");
 brcmf_usb_ctl_complete(devinfo, BRCMF_USB_CBCTL_WRITE,
  urb->status);
}
