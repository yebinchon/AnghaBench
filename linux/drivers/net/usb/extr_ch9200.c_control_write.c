
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int udev; int net; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned char REQUEST_WRITE ;
 unsigned char USB_DIR_OUT ;
 unsigned char USB_RECIP_DEVICE ;
 unsigned char USB_RECIP_OTHER ;
 unsigned char USB_TYPE_VENDOR ;
 int kfree (unsigned char*) ;
 unsigned char* kmemdup (void*,unsigned short,int ) ;
 int netdev_dbg (int ,char*,unsigned short,unsigned short) ;
 int usb_control_msg (int ,int ,unsigned char,unsigned char,unsigned short,unsigned short,unsigned char*,unsigned short,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int control_write(struct usbnet *dev, unsigned char request,
    unsigned short value, unsigned short index,
    void *data, unsigned short size, int timeout)
{
 unsigned char *buf = ((void*)0);
 unsigned char request_type;
 int err = 0;

 if (request == REQUEST_WRITE)
  request_type = (USB_DIR_OUT | USB_TYPE_VENDOR |
    USB_RECIP_OTHER);
 else
  request_type = (USB_DIR_OUT | USB_TYPE_VENDOR |
    USB_RECIP_DEVICE);

 netdev_dbg(dev->net, "Control_write() index=0x%02x size=%d\n",
     index, size);

 if (data) {
  buf = kmemdup(data, size, GFP_KERNEL);
  if (!buf) {
   err = -ENOMEM;
   goto err_out;
  }
 }

 err = usb_control_msg(dev->udev,
         usb_sndctrlpipe(dev->udev, 0),
         request, request_type, value, index, buf, size,
         timeout);
 if (err >= 0 && err < size)
  err = -EINVAL;
 kfree(buf);

 return 0;

err_out:
 return err;
}
