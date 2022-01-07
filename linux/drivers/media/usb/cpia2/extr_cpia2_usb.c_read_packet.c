
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (size_t,int ) ;
 int memcpy (int *,unsigned char*,size_t) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,unsigned char*,size_t,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int read_packet(struct usb_device *udev,
         u8 request, u8 * registers, u16 start, size_t size)
{
 unsigned char *buf;
 int ret;

 if (!registers || size <= 0)
  return -EINVAL;

 buf = kmalloc(size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = usb_control_msg(udev,
          usb_rcvctrlpipe(udev, 0),
          request,
          USB_DIR_IN|USB_TYPE_VENDOR|USB_RECIP_DEVICE,
          start,
          0,
          buf,
          size,
          HZ);

 if (ret >= 0)
  memcpy(registers, buf, size);

 kfree(buf);

 return ret;
}
