
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ context; } ;
struct brcmf_usbdev_info {int ctl_completed; } ;


 int brcmf_usb_ioctl_resp_wake (struct brcmf_usbdev_info*) ;

__attribute__((used)) static void
brcmf_usb_sync_complete(struct urb *urb)
{
 struct brcmf_usbdev_info *devinfo =
   (struct brcmf_usbdev_info *)urb->context;

 devinfo->ctl_completed = 1;
 brcmf_usb_ioctl_resp_wake(devinfo);
}
