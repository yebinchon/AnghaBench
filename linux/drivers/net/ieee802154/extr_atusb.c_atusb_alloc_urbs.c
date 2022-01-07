
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct atusb {int idle_urbs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int atusb_free_urbs (struct atusb*) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;

__attribute__((used)) static int atusb_alloc_urbs(struct atusb *atusb, int n)
{
 struct urb *urb;

 while (n) {
  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   atusb_free_urbs(atusb);
   return -ENOMEM;
  }
  usb_anchor_urb(urb, &atusb->idle_urbs);
  n--;
 }
 return 0;
}
