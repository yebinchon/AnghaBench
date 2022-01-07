
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int usb_buf; int dev; } ;


 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_RECIP_ENDPOINT ;
 int USB_TYPE_VENDOR ;
 int pr_err (char*,int,int,int) ;
 int usb_control_msg (int ,unsigned int,int,int,int ,int ,int ,int,int) ;
 unsigned int usb_rcvctrlpipe (int ,int ) ;
 unsigned int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int stv_sndctrl(struct gspca_dev *gspca_dev, int set, u8 req, u16 val,
         int size)
{
 int ret = -1;
 u8 req_type = 0;
 unsigned int pipe = 0;

 switch (set) {
 case 0:
  req_type = USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT;
  pipe = usb_rcvctrlpipe(gspca_dev->dev, 0);
  break;
 case 1:
  req_type = USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT;
  pipe = usb_sndctrlpipe(gspca_dev->dev, 0);
  break;
 case 2:
  req_type = USB_DIR_IN | USB_RECIP_DEVICE;
  pipe = usb_rcvctrlpipe(gspca_dev->dev, 0);
  break;
 case 3:
  req_type = USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE;
  pipe = usb_sndctrlpipe(gspca_dev->dev, 0);
  break;
 }

 ret = usb_control_msg(gspca_dev->dev, pipe,
         req, req_type,
         val, 0, gspca_dev->usb_buf, size, 500);

 if ((ret < 0) && (req != 0x0a))
  pr_err("usb_control_msg error %i, request = 0x%x, error = %i\n",
         set, req, ret);

 return ret;
}
