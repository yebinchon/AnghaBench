
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; int actual_length; scalar_t__ context; } ;
struct brcmf_usbdev_info {int ctl_urb_actual_length; } ;


 int BRCMF_USB_CBCTL_READ ;
 int USB ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_usb_ctl_complete (struct brcmf_usbdev_info*,int ,int ) ;

__attribute__((used)) static void
brcmf_usb_ctlread_complete(struct urb *urb)
{
 struct brcmf_usbdev_info *devinfo =
  (struct brcmf_usbdev_info *)urb->context;

 brcmf_dbg(USB, "Enter\n");
 devinfo->ctl_urb_actual_length = urb->actual_length;
 brcmf_usb_ctl_complete(devinfo, BRCMF_USB_CBCTL_READ,
  urb->status);
}
