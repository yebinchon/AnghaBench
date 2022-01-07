
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_usb {TYPE_1__* pipes; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int urb_cnt_thresh; int urb_alloc; } ;


 int ATH10K_USB_PIPE_TX_CTRL ;
 int ATH10K_USB_PIPE_TX_DATA_HP ;
 struct ath10k_usb* ath10k_usb_priv (struct ath10k*) ;
 int ath10k_usb_start_recv_pipes (struct ath10k*) ;

__attribute__((used)) static int ath10k_usb_hif_start(struct ath10k *ar)
{
 int i;
 struct ath10k_usb *ar_usb = ath10k_usb_priv(ar);

 ath10k_usb_start_recv_pipes(ar);


 for (i = ATH10K_USB_PIPE_TX_CTRL;
      i <= ATH10K_USB_PIPE_TX_DATA_HP; i++) {
  ar_usb->pipes[i].urb_cnt_thresh =
      ar_usb->pipes[i].urb_alloc / 2;
 }

 return 0;
}
