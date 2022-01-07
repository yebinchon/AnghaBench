
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
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kfree (unsigned char*) ;
 unsigned char* kmemdup (int *,size_t,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,unsigned char*,size_t,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int write_packet(struct usb_device *udev,
   u8 request, u8 * registers, u16 start, size_t size)
{
 unsigned char *buf;
 int ret;

 if (!registers || size <= 0)
  return -EINVAL;

 buf = kmemdup(registers, size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = usb_control_msg(udev,
          usb_sndctrlpipe(udev, 0),
          request,
          USB_TYPE_VENDOR | USB_RECIP_DEVICE,
          start,
          0,
          buf,
          size,
          HZ);

 kfree(buf);
 return ret;
}
