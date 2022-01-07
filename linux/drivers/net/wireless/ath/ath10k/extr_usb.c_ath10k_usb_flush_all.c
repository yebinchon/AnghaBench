
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_usb {TYPE_1__* pipes; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int io_complete_work; int urb_submitted; scalar_t__ ar_usb; } ;


 int ATH10K_USB_PIPE_MAX ;
 struct ath10k_usb* ath10k_usb_priv (struct ath10k*) ;
 int cancel_work_sync (int *) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void ath10k_usb_flush_all(struct ath10k *ar)
{
 struct ath10k_usb *ar_usb = ath10k_usb_priv(ar);
 int i;

 for (i = 0; i < ATH10K_USB_PIPE_MAX; i++) {
  if (ar_usb->pipes[i].ar_usb) {
   usb_kill_anchored_urbs(&ar_usb->pipes[i].urb_submitted);
   cancel_work_sync(&ar_usb->pipes[i].io_complete_work);
  }
 }
}
