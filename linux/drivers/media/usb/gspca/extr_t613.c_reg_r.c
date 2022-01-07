
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int * usb_buf; int dev; } ;


 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static u8 reg_r(struct gspca_dev *gspca_dev,
     u16 index)
{
 usb_control_msg(gspca_dev->dev,
   usb_rcvctrlpipe(gspca_dev->dev, 0),
   0,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0,
   index,
   gspca_dev->usb_buf, 1, 500);
 return gspca_dev->usb_buf[0];
}
