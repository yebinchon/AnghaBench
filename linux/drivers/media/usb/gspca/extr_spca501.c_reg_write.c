
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct gspca_dev {struct usb_device* dev; } ;
typedef int __u16 ;


 int D_USBO ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ,int ) ;
 int pr_err (char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int reg_write(struct gspca_dev *gspca_dev,
     __u16 req, __u16 index, __u16 value)
{
 int ret;
 struct usb_device *dev = gspca_dev->dev;

 ret = usb_control_msg(dev,
   usb_sndctrlpipe(dev, 0),
   req,
   USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value, index, ((void*)0), 0, 500);
 gspca_dbg(gspca_dev, D_USBO, "reg write: 0x%02x 0x%02x 0x%02x\n",
    req, index, value);
 if (ret < 0)
  pr_err("reg write: error %d\n", ret);
 return ret;
}
