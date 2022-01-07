
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct em28xx {scalar_t__ wait_after_write; int ctrl_urb_lock; int urb_buf; scalar_t__ disconnected; int intf; } ;


 int EINVAL ;
 int ENODEV ;
 int HZ ;
 int URB_MAX_CTRL_SIZE ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int em28xx_regdbg (char*,int,int,int ,int ,int ,int,int,int,int,int,char*,...) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int memcpy (int ,char*,int) ;
 int msleep (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (struct usb_device*,int,int ,int,int,int,int ,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;
 int usb_translate_errors (int) ;

int em28xx_write_regs_req(struct em28xx *dev, u8 req, u16 reg, char *buf,
     int len)
{
 int ret;
 struct usb_device *udev = interface_to_usbdev(dev->intf);
 int pipe = usb_sndctrlpipe(udev, 0);

 if (dev->disconnected)
  return -ENODEV;

 if (len < 1 || len > URB_MAX_CTRL_SIZE)
  return -EINVAL;

 mutex_lock(&dev->ctrl_urb_lock);
 memcpy(dev->urb_buf, buf, len);
 ret = usb_control_msg(udev, pipe, req,
         USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         0x0000, reg, dev->urb_buf, len, HZ);
 mutex_unlock(&dev->ctrl_urb_lock);

 if (ret < 0) {
  em28xx_regdbg("(pipe 0x%08x): OUT:  %02x %02x %02x %02x %02x %02x %02x %02x >>> %*ph  failed with error %i\n",
         pipe,
         USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         req, 0, 0,
         reg & 0xff, reg >> 8,
         len & 0xff, len >> 8, len, buf, ret);
  return usb_translate_errors(ret);
 }

 em28xx_regdbg("(pipe 0x%08x): OUT:  %02x %02x %02x %02x %02x %02x %02x %02x >>> %*ph\n",
        pipe,
        USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
        req, 0, 0,
        reg & 0xff, reg >> 8,
        len & 0xff, len >> 8, len, buf);

 if (dev->wait_after_write)
  msleep(dev->wait_after_write);

 return ret;
}
