
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int dev; int * usb_buf; } ;


 int GFP_KERNEL ;
 int USB_BUF_SZ ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kfree (int *) ;
 int * kmalloc_array (int,int,int ) ;
 int pr_err (char*) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_w_ixbuf(struct gspca_dev *gspca_dev,
   u8 reg,
   const u8 *buffer, u16 len)
{
 int i;
 u8 *p, *tmpbuf;

 if (len * 2 <= USB_BUF_SZ) {
  p = tmpbuf = gspca_dev->usb_buf;
 } else {
  p = tmpbuf = kmalloc_array(len, 2, GFP_KERNEL);
  if (!tmpbuf) {
   pr_err("Out of memory\n");
   return;
  }
 }
 i = len;
 while (--i >= 0) {
  *p++ = reg++;
  *p++ = *buffer++;
 }
 usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   0,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0x01, 0,
   tmpbuf, len * 2, 500);
 if (len * 2 > USB_BUF_SZ)
  kfree(tmpbuf);
}
