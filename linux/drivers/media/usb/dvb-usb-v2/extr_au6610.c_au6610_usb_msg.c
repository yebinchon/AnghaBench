
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {TYPE_1__* udev; } ;
struct TYPE_4__ {int dev; } ;




 int AU6610_USB_TIMEOUT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KBUILD_MODNAME ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,int ,int) ;
 int dvb_usb_dbg_usb_control_msg (TYPE_1__*,int,int,int,int,int*,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int usb_control_msg (TYPE_1__*,int ,int,int,int,int,int*,int,int ) ;
 int usb_rcvctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static int au6610_usb_msg(struct dvb_usb_device *d, u8 operation, u8 addr,
     u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
 int ret;
 u16 index;
 u8 *usb_buf;





 usb_buf = kmalloc(6, GFP_KERNEL);
 if (!usb_buf)
  return -ENOMEM;

 switch (wlen) {
 case 1:
  index = wbuf[0] << 8;
  break;
 case 2:
  index = wbuf[0] << 8;
  index += wbuf[1];
  break;
 default:
  dev_err(&d->udev->dev, "%s: wlen=%d, aborting\n",
    KBUILD_MODNAME, wlen);
  ret = -EINVAL;
  goto error;
 }

 ret = usb_control_msg(d->udev, usb_rcvctrlpipe(d->udev, 0), operation,
         USB_TYPE_VENDOR|USB_DIR_IN, addr << 1, index,
         usb_buf, 6, AU6610_USB_TIMEOUT);

 dvb_usb_dbg_usb_control_msg(d->udev, operation,
   (USB_TYPE_VENDOR|USB_DIR_IN), addr << 1, index,
   usb_buf, 6);

 if (ret < 0)
  goto error;

 switch (operation) {
 case 129:
 case 128:

  rbuf[0] = usb_buf[4];
 }
error:
 kfree(usb_buf);
 return ret;
}
