
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int dev; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int pr_err (char*,int ,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int vicam_control_msg(struct gspca_dev *gspca_dev, u8 request,
 u16 value, u16 index, u8 *data, u16 len)
{
 int ret;

 ret = usb_control_msg(gspca_dev->dev,
         usb_sndctrlpipe(gspca_dev->dev, 0),
         request,
         USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         value, index, data, len, 1000);
 if (ret < 0)
  pr_err("control msg req %02X error %d\n", request, ret);

 return ret;
}
