
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath6kl_usb {TYPE_1__* pipes; } ;
struct ath6kl {int dummy; } ;
struct TYPE_2__ {int urb_cnt_thresh; int urb_alloc; } ;


 int ATH6KL_USB_PIPE_TX_CTRL ;
 int ATH6KL_USB_PIPE_TX_DATA_HP ;
 struct ath6kl_usb* ath6kl_usb_priv (struct ath6kl*) ;
 int ath6kl_usb_start_recv_pipes (struct ath6kl_usb*) ;

__attribute__((used)) static void hif_start(struct ath6kl *ar)
{
 struct ath6kl_usb *device = ath6kl_usb_priv(ar);
 int i;

 ath6kl_usb_start_recv_pipes(device);


 for (i = ATH6KL_USB_PIPE_TX_CTRL;
      i <= ATH6KL_USB_PIPE_TX_DATA_HP; i++) {
  device->pipes[i].urb_cnt_thresh =
      device->pipes[i].urb_alloc / 2;
 }
}
