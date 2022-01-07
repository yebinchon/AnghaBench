
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct urb {int transfer_dma; int transfer_buffer_length; } ;
struct TYPE_2__ {int num_urb; struct urb** transfer_buffer; struct urb** urb; } ;
struct em28xx {TYPE_1__ adev; int intf; } ;


 struct usb_device* interface_to_usbdev (int ) ;
 int kfree (struct urb**) ;
 int usb_free_coherent (struct usb_device*,int ,struct urb*,int ) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void em28xx_audio_free_urb(struct em28xx *dev)
{
 struct usb_device *udev = interface_to_usbdev(dev->intf);
 int i;

 for (i = 0; i < dev->adev.num_urb; i++) {
  struct urb *urb = dev->adev.urb[i];

  if (!urb)
   continue;

  usb_free_coherent(udev, urb->transfer_buffer_length,
      dev->adev.transfer_buffer[i],
      urb->transfer_dma);

  usb_free_urb(urb);
 }
 kfree(dev->adev.urb);
 kfree(dev->adev.transfer_buffer);
 dev->adev.num_urb = 0;
}
