
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct em28xx {int ctrl_urb_lock; int urb_buf; scalar_t__ disconnected; int intf; } ;


 int EINVAL ;
 int ENODEV ;
 int HZ ;
 int URB_MAX_CTRL_SIZE ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int em28xx_regdbg (char*,int,int,int ,int ,int ,int,int,int,int,int,...) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int memcpy (char*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (struct usb_device*,int,int ,int,int,int,int ,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_translate_errors (int) ;

int em28xx_read_reg_req_len(struct em28xx *dev, u8 req, u16 reg,
       char *buf, int len)
{
 int ret;
 struct usb_device *udev = interface_to_usbdev(dev->intf);
 int pipe = usb_rcvctrlpipe(udev, 0);

 if (dev->disconnected)
  return -ENODEV;

 if (len > URB_MAX_CTRL_SIZE)
  return -EINVAL;

 mutex_lock(&dev->ctrl_urb_lock);
 ret = usb_control_msg(udev, pipe, req,
         USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         0x0000, reg, dev->urb_buf, len, HZ);
 if (ret < 0) {
  em28xx_regdbg("(pipe 0x%08x): IN:  %02x %02x %02x %02x %02x %02x %02x %02x  failed with error %i\n",
         pipe,
         USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         req, 0, 0,
         reg & 0xff, reg >> 8,
         len & 0xff, len >> 8, ret);
  mutex_unlock(&dev->ctrl_urb_lock);
  return usb_translate_errors(ret);
 }

 if (len)
  memcpy(buf, dev->urb_buf, len);

 mutex_unlock(&dev->ctrl_urb_lock);

 em28xx_regdbg("(pipe 0x%08x): IN:  %02x %02x %02x %02x %02x %02x %02x %02x <<< %*ph\n",
        pipe, USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
        req, 0, 0,
        reg & 0xff, reg >> 8,
        len & 0xff, len >> 8, len, buf);

 return ret;
}
