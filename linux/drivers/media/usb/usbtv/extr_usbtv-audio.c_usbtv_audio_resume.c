
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtv {scalar_t__ snd_bulk_urb; int snd_stream; } ;


 int GFP_ATOMIC ;
 scalar_t__ atomic_read (int *) ;
 int usb_submit_urb (scalar_t__,int ) ;

void usbtv_audio_resume(struct usbtv *usbtv)
{
 if (atomic_read(&usbtv->snd_stream) && usbtv->snd_bulk_urb)
  usb_submit_urb(usbtv->snd_bulk_urb, GFP_ATOMIC);
}
