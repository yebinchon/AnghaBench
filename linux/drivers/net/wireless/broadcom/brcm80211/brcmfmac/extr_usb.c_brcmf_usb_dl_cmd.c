
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int usb_complete_t ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_5__ {int bRequestType; int bRequest; int wLength; } ;
struct brcmf_usbdev_info {int ctl_completed; TYPE_2__* ctl_urb; TYPE_1__ ctl_read; int usbdev; } ;
struct TYPE_6__ {int transfer_buffer_length; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_ATOMIC ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int brcmf_err (char*,int) ;
 int brcmf_usb_ioctl_resp_wait (struct brcmf_usbdev_info*) ;
 scalar_t__ brcmf_usb_sync_complete ;
 int cpu_to_le16p (int*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memcpy (void*,char*,int) ;
 int usb_fill_control_urb (TYPE_2__*,int ,int ,unsigned char*,void*,int,int ,struct brcmf_usbdev_info*) ;
 int usb_kill_urb (TYPE_2__*) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int brcmf_usb_dl_cmd(struct brcmf_usbdev_info *devinfo, u8 cmd,
       void *buffer, int buflen)
{
 int ret;
 char *tmpbuf;
 u16 size;

 if ((!devinfo) || (devinfo->ctl_urb == ((void*)0)))
  return -EINVAL;

 tmpbuf = kmalloc(buflen, GFP_ATOMIC);
 if (!tmpbuf)
  return -ENOMEM;

 size = buflen;
 devinfo->ctl_urb->transfer_buffer_length = size;

 devinfo->ctl_read.wLength = cpu_to_le16p(&size);
 devinfo->ctl_read.bRequestType = USB_DIR_IN | USB_TYPE_VENDOR |
  USB_RECIP_INTERFACE;
 devinfo->ctl_read.bRequest = cmd;

 usb_fill_control_urb(devinfo->ctl_urb,
  devinfo->usbdev,
  usb_rcvctrlpipe(devinfo->usbdev, 0),
  (unsigned char *) &devinfo->ctl_read,
  (void *) tmpbuf, size,
  (usb_complete_t)brcmf_usb_sync_complete, devinfo);

 devinfo->ctl_completed = 0;
 ret = usb_submit_urb(devinfo->ctl_urb, GFP_ATOMIC);
 if (ret < 0) {
  brcmf_err("usb_submit_urb failed %d\n", ret);
  goto finalize;
 }

 if (!brcmf_usb_ioctl_resp_wait(devinfo)) {
  usb_kill_urb(devinfo->ctl_urb);
  ret = -ETIMEDOUT;
 } else {
  memcpy(buffer, tmpbuf, buflen);
 }

finalize:
 kfree(tmpbuf);
 return ret;
}
