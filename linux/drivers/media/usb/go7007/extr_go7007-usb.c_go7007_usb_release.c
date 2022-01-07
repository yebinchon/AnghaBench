
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct go7007_usb* transfer_buffer; } ;
struct go7007_usb {struct urb** audio_urbs; struct urb** video_urbs; struct urb* intr_urb; } ;
struct go7007 {struct go7007_usb* hpi_context; } ;


 int kfree (struct go7007_usb*) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;

__attribute__((used)) static void go7007_usb_release(struct go7007 *go)
{
 struct go7007_usb *usb = go->hpi_context;
 struct urb *vurb, *aurb;
 int i;

 if (usb->intr_urb) {
  usb_kill_urb(usb->intr_urb);
  kfree(usb->intr_urb->transfer_buffer);
  usb_free_urb(usb->intr_urb);
 }


 for (i = 0; i < 8; ++i) {
  vurb = usb->video_urbs[i];
  if (vurb) {
   usb_kill_urb(vurb);
   kfree(vurb->transfer_buffer);
   usb_free_urb(vurb);
  }
  aurb = usb->audio_urbs[i];
  if (aurb) {
   usb_kill_urb(aurb);
   kfree(aurb->transfer_buffer);
   usb_free_urb(aurb);
  }
 }

 kfree(go->hpi_context);
}
