
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_complete_t ;
struct brcmf_usbdev_info {int ctl_completed; TYPE_1__* bulk_urb; int tx_pipe; int usbdev; } ;
struct TYPE_3__ {int transfer_flags; } ;


 int EINVAL ;
 int GFP_ATOMIC ;
 int URB_ZERO_PACKET ;
 int brcmf_err (char*,int) ;
 int brcmf_usb_ioctl_resp_wait (struct brcmf_usbdev_info*) ;
 scalar_t__ brcmf_usb_sync_complete ;
 int usb_fill_bulk_urb (TYPE_1__*,int ,int ,void*,int,int ,struct brcmf_usbdev_info*) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int
brcmf_usb_dl_send_bulk(struct brcmf_usbdev_info *devinfo, void *buffer, int len)
{
 int ret;

 if ((devinfo == ((void*)0)) || (devinfo->bulk_urb == ((void*)0)))
  return -EINVAL;


 usb_fill_bulk_urb(devinfo->bulk_urb, devinfo->usbdev,
     devinfo->tx_pipe, buffer, len,
     (usb_complete_t)brcmf_usb_sync_complete, devinfo);

 devinfo->bulk_urb->transfer_flags |= URB_ZERO_PACKET;

 devinfo->ctl_completed = 0;
 ret = usb_submit_urb(devinfo->bulk_urb, GFP_ATOMIC);
 if (ret) {
  brcmf_err("usb_submit_urb failed %d\n", ret);
  return ret;
 }
 ret = brcmf_usb_ioctl_resp_wait(devinfo);
 return (ret == 0);
}
