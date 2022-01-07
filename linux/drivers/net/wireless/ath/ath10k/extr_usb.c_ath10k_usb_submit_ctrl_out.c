
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ath10k_usb {int udev; } ;
struct ath10k {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 struct ath10k_usb* ath10k_usb_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int kfree (int *) ;
 int * kmemdup (void*,int ,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int ath10k_usb_submit_ctrl_out(struct ath10k *ar,
          u8 req, u16 value, u16 index, void *data,
          u32 size)
{
 struct ath10k_usb *ar_usb = ath10k_usb_priv(ar);
 u8 *buf = ((void*)0);
 int ret;

 if (size > 0) {
  buf = kmemdup(data, size, GFP_KERNEL);
  if (!buf)
   return -ENOMEM;
 }


 ret = usb_control_msg(ar_usb->udev,
         usb_sndctrlpipe(ar_usb->udev, 0),
         req,
         USB_DIR_OUT | USB_TYPE_VENDOR |
         USB_RECIP_DEVICE, value, index, buf,
         size, 1000);

 if (ret < 0) {
  ath10k_warn(ar, "Failed to submit usb control message: %d\n",
       ret);
  kfree(buf);
  return ret;
 }

 kfree(buf);

 return 0;
}
