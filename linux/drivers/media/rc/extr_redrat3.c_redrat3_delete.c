
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct redrat3_dev {int dma_in; int bulk_in_buf; TYPE_1__* ep_narrow; int learn_urb; int flash_urb; int wide_urb; int narrow_urb; } ;
struct TYPE_2__ {int wMaxPacketSize; } ;


 int kfree (struct redrat3_dev*) ;
 int le16_to_cpu (int ) ;
 int usb_free_coherent (struct usb_device*,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static inline void redrat3_delete(struct redrat3_dev *rr3,
      struct usb_device *udev)
{
 usb_kill_urb(rr3->narrow_urb);
 usb_kill_urb(rr3->wide_urb);
 usb_kill_urb(rr3->flash_urb);
 usb_kill_urb(rr3->learn_urb);
 usb_free_urb(rr3->narrow_urb);
 usb_free_urb(rr3->wide_urb);
 usb_free_urb(rr3->flash_urb);
 usb_free_urb(rr3->learn_urb);
 usb_free_coherent(udev, le16_to_cpu(rr3->ep_narrow->wMaxPacketSize),
     rr3->bulk_in_buf, rr3->dma_in);

 kfree(rr3);
}
