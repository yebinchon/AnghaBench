
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int usb_err; scalar_t__* usb_buf; int dev; } ;
typedef scalar_t__ __u8 ;


 scalar_t__ const SKIP ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int pr_err (char*,int,scalar_t__ const,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int,scalar_t__*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_w_page(struct gspca_dev *gspca_dev,
   const __u8 *page, int len)
{
 int index;
 int ret = 0;

 if (gspca_dev->usb_err < 0)
  return;
 for (index = 0; index < len; index++) {
  if (page[index] == SKIP)
   continue;
  gspca_dev->usb_buf[0] = page[index];
  ret = usb_control_msg(gspca_dev->dev,
    usb_sndctrlpipe(gspca_dev->dev, 0),
    0,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    0, index, gspca_dev->usb_buf, 1,
    500);
  if (ret < 0) {
   pr_err("reg_w_page() failed index 0x%02x, value 0x%02x, error %d\n",
          index, page[index], ret);
   gspca_dev->usb_err = ret;
   break;
  }
 }
}
