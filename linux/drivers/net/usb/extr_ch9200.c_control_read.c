
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int udev; int net; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned char REQUEST_READ ;
 unsigned char USB_DIR_IN ;
 unsigned char USB_RECIP_DEVICE ;
 unsigned char USB_RECIP_OTHER ;
 unsigned char USB_TYPE_VENDOR ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (unsigned short,int ) ;
 int memcpy (void*,unsigned char*,unsigned short) ;
 int netdev_dbg (int ,char*,unsigned short,unsigned short) ;
 int usb_control_msg (int ,int ,unsigned char,unsigned char,unsigned short,unsigned short,unsigned char*,unsigned short,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int control_read(struct usbnet *dev,
   unsigned char request, unsigned short value,
   unsigned short index, void *data, unsigned short size,
   int timeout)
{
 unsigned char *buf = ((void*)0);
 unsigned char request_type;
 int err = 0;

 if (request == REQUEST_READ)
  request_type = (USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_OTHER);
 else
  request_type = (USB_DIR_IN | USB_TYPE_VENDOR |
    USB_RECIP_DEVICE);

 netdev_dbg(dev->net, "Control_read() index=0x%02x size=%d\n",
     index, size);

 buf = kmalloc(size, GFP_KERNEL);
 if (!buf) {
  err = -ENOMEM;
  goto err_out;
 }

 err = usb_control_msg(dev->udev,
         usb_rcvctrlpipe(dev->udev, 0),
         request, request_type, value, index, buf, size,
         timeout);
 if (err == size)
  memcpy(data, buf, size);
 else if (err >= 0)
  err = -EINVAL;
 kfree(buf);

 return err;

err_out:
 return err;
}
