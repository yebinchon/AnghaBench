
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_complete_t ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int bRequestType; int bRequest; int wLength; } ;
struct brcmf_usbdev_info {TYPE_2__* ctl_urb; TYPE_1__ ctl_read; int ctl_in_pipe; int usbdev; } ;
struct TYPE_5__ {int transfer_buffer_length; } ;


 int EINVAL ;
 int GFP_ATOMIC ;
 int USB ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*,int) ;
 scalar_t__ brcmf_usb_ctlread_complete ;
 int cpu_to_le16p (int*) ;
 int usb_fill_control_urb (TYPE_2__*,int ,int ,unsigned char*,int *,int,int ,struct brcmf_usbdev_info*) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int
brcmf_usb_recv_ctl(struct brcmf_usbdev_info *devinfo, u8 *buf, int len)
{
 int ret;
 u16 size;

 brcmf_dbg(USB, "Enter\n");
 if ((devinfo == ((void*)0)) || (buf == ((void*)0)) || (len == 0)
  || (devinfo->ctl_urb == ((void*)0)))
  return -EINVAL;

 size = len;
 devinfo->ctl_read.wLength = cpu_to_le16p(&size);
 devinfo->ctl_urb->transfer_buffer_length = size;

 devinfo->ctl_read.bRequestType = USB_DIR_IN
  | USB_TYPE_CLASS | USB_RECIP_INTERFACE;
 devinfo->ctl_read.bRequest = 1;

 usb_fill_control_urb(devinfo->ctl_urb,
  devinfo->usbdev,
  devinfo->ctl_in_pipe,
  (unsigned char *) &devinfo->ctl_read,
  buf, size,
  (usb_complete_t)brcmf_usb_ctlread_complete,
  devinfo);

 ret = usb_submit_urb(devinfo->ctl_urb, GFP_ATOMIC);
 if (ret < 0)
  brcmf_err("usb_submit_urb failed %d\n", ret);

 return ret;
}
