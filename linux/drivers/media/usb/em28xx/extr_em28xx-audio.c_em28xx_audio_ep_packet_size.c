
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_endpoint_descriptor {int wMaxPacketSize; } ;
struct usb_device {scalar_t__ speed; } ;


 scalar_t__ USB_SPEED_HIGH ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int em28xx_audio_ep_packet_size(struct usb_device *udev,
           struct usb_endpoint_descriptor *e)
{
 int size = le16_to_cpu(e->wMaxPacketSize);

 if (udev->speed == USB_SPEED_HIGH)
  return (size & 0x7ff) * (1 + (((size) >> 11) & 0x03));

 return size & 0x7ff;
}
