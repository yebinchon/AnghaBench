
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct mt76_dev {int dev; int state; } ;


 int EIO ;
 int ENODEV ;
 int MT76_REMOVED ;
 int MT_VEND_REQ_MAX_RETRY ;
 int MT_VEND_REQ_TOUT_MS ;
 int USB_DIR_IN ;
 int dev_err (int ,char*,int,int ,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 struct usb_device* to_usb_device (int ) ;
 int usb_control_msg (struct usb_device*,unsigned int,int,int,int ,int ,void*,size_t,int ) ;
 unsigned int usb_rcvctrlpipe (struct usb_device*,int ) ;
 unsigned int usb_sndctrlpipe (struct usb_device*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int __mt76u_vendor_request(struct mt76_dev *dev, u8 req,
      u8 req_type, u16 val, u16 offset,
      void *buf, size_t len)
{
 struct usb_device *udev = to_usb_device(dev->dev);
 unsigned int pipe;
 int i, ret;

 pipe = (req_type & USB_DIR_IN) ? usb_rcvctrlpipe(udev, 0)
           : usb_sndctrlpipe(udev, 0);
 for (i = 0; i < MT_VEND_REQ_MAX_RETRY; i++) {
  if (test_bit(MT76_REMOVED, &dev->state))
   return -EIO;

  ret = usb_control_msg(udev, pipe, req, req_type, val,
          offset, buf, len, MT_VEND_REQ_TOUT_MS);
  if (ret == -ENODEV)
   set_bit(MT76_REMOVED, &dev->state);
  if (ret >= 0 || ret == -ENODEV)
   return ret;
  usleep_range(5000, 10000);
 }

 dev_err(dev->dev, "vendor request req:%02x off:%04x failed:%d\n",
  req, offset, ret);
 return ret;
}
