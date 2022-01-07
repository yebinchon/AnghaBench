
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath6kl_usb {TYPE_1__* pipes; } ;
struct TYPE_2__ {int urb_submitted; int * ar_usb; } ;


 int ATH6KL_USB_PIPE_MAX ;
 int flush_scheduled_work () ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void ath6kl_usb_flush_all(struct ath6kl_usb *ar_usb)
{
 int i;

 for (i = 0; i < ATH6KL_USB_PIPE_MAX; i++) {
  if (ar_usb->pipes[i].ar_usb != ((void*)0))
   usb_kill_anchored_urbs(&ar_usb->pipes[i].urb_submitted);
 }





 flush_scheduled_work();
}
