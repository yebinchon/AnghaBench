
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_usb {TYPE_1__* pipes; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int urb_cnt_thresh; } ;


 size_t ATH10K_USB_PIPE_RX_DATA ;
 int ath10k_usb_post_recv_transfers (struct ath10k*,TYPE_1__*) ;
 struct ath10k_usb* ath10k_usb_priv (struct ath10k*) ;

__attribute__((used)) static void ath10k_usb_start_recv_pipes(struct ath10k *ar)
{
 struct ath10k_usb *ar_usb = ath10k_usb_priv(ar);

 ar_usb->pipes[ATH10K_USB_PIPE_RX_DATA].urb_cnt_thresh = 1;

 ath10k_usb_post_recv_transfers(ar,
           &ar_usb->pipes[ATH10K_USB_PIPE_RX_DATA]);
}
