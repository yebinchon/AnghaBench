
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int context; } ;
struct atusb {int idle_urbs; } ;


 int kfree_skb (int ) ;
 int usb_free_urb (struct urb*) ;
 struct urb* usb_get_from_anchor (int *) ;

__attribute__((used)) static void atusb_free_urbs(struct atusb *atusb)
{
 struct urb *urb;

 while (1) {
  urb = usb_get_from_anchor(&atusb->idle_urbs);
  if (!urb)
   break;
  kfree_skb(urb->context);
  usb_free_urb(urb);
 }
}
