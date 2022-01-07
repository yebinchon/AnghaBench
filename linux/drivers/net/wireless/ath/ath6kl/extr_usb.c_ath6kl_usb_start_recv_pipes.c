
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath6kl_usb {TYPE_1__* pipes; } ;
struct TYPE_2__ {int urb_cnt_thresh; } ;


 size_t ATH6KL_USB_PIPE_RX_DATA ;
 int ATH6KL_USB_RX_BUFFER_SIZE ;
 int ath6kl_usb_post_recv_transfers (TYPE_1__*,int ) ;

__attribute__((used)) static void ath6kl_usb_start_recv_pipes(struct ath6kl_usb *ar_usb)
{
 ar_usb->pipes[ATH6KL_USB_PIPE_RX_DATA].urb_cnt_thresh = 1;

 ath6kl_usb_post_recv_transfers(&ar_usb->pipes[ATH6KL_USB_PIPE_RX_DATA],
           ATH6KL_USB_RX_BUFFER_SIZE);
}
