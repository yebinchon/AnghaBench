
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;


 int DW210X_READ_MSG ;
 int DW210X_WRITE_MSG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int kfree (int*) ;
 int* kmalloc (int ,int ) ;
 int memcpy (int*,int*,int ) ;
 int usb_control_msg (struct usb_device*,unsigned int,int,int,int ,int ,int*,int ,int) ;
 unsigned int usb_rcvctrlpipe (struct usb_device*,int ) ;
 unsigned int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int dw210x_op_rw(struct usb_device *dev, u8 request, u16 value,
   u16 index, u8 * data, u16 len, int flags)
{
 int ret;
 u8 *u8buf;
 unsigned int pipe = (flags == DW210X_READ_MSG) ?
    usb_rcvctrlpipe(dev, 0) : usb_sndctrlpipe(dev, 0);
 u8 request_type = (flags == DW210X_READ_MSG) ? USB_DIR_IN : USB_DIR_OUT;

 u8buf = kmalloc(len, GFP_KERNEL);
 if (!u8buf)
  return -ENOMEM;


 if (flags == DW210X_WRITE_MSG)
  memcpy(u8buf, data, len);
 ret = usb_control_msg(dev, pipe, request, request_type | USB_TYPE_VENDOR,
    value, index , u8buf, len, 2000);

 if (flags == DW210X_READ_MSG)
  memcpy(data, u8buf, len);

 kfree(u8buf);
 return ret;
}
