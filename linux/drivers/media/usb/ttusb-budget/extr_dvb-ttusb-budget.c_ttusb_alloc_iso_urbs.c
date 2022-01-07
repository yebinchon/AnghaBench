
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct ttusb {struct urb** iso_urb; int iso_buffer; } ;


 int ENOMEM ;
 int FRAMES_PER_ISO_BUF ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int ISO_BUF_COUNT ;
 int ISO_FRAME_SIZE ;
 int kcalloc (int,int ,int ) ;
 int ttusb_free_iso_urbs (struct ttusb*) ;
 struct urb* usb_alloc_urb (int,int ) ;

__attribute__((used)) static int ttusb_alloc_iso_urbs(struct ttusb *ttusb)
{
 int i;

 ttusb->iso_buffer = kcalloc(FRAMES_PER_ISO_BUF * ISO_BUF_COUNT,
   ISO_FRAME_SIZE, GFP_KERNEL);
 if (!ttusb->iso_buffer)
  return -ENOMEM;

 for (i = 0; i < ISO_BUF_COUNT; i++) {
  struct urb *urb;

  if (!
      (urb =
       usb_alloc_urb(FRAMES_PER_ISO_BUF, GFP_ATOMIC))) {
   ttusb_free_iso_urbs(ttusb);
   return -ENOMEM;
  }

  ttusb->iso_urb[i] = urb;
 }

 return 0;
}
