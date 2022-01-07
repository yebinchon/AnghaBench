
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ath6kl_usb {int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int ath6kl_warn (char*,int) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int memcpy (int *,int *,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int ath6kl_usb_submit_ctrl_in(struct ath6kl_usb *ar_usb,
      u8 req, u16 value, u16 index, void *data,
      u32 size)
{
 u8 *buf = ((void*)0);
 int ret;

 if (size > 0) {
  buf = kmalloc(size, GFP_KERNEL);
  if (buf == ((void*)0))
   return -ENOMEM;
 }


 ret = usb_control_msg(ar_usb->udev,
     usb_rcvctrlpipe(ar_usb->udev, 0),
     req,
     USB_DIR_IN | USB_TYPE_VENDOR |
     USB_RECIP_DEVICE, value, index, buf,
     size, 2 * HZ);

 if (ret < 0) {
  ath6kl_warn("Failed to read usb control message: %d\n", ret);
  kfree(buf);
  return ret;
 }

 memcpy((u8 *) data, buf, size);

 kfree(buf);

 return 0;
}
