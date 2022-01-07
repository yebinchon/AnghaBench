
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath10k {int dummy; } ;


 int ATH10K_USB_PIPE_RX_CTRL ;
 int ATH10K_USB_PIPE_TX_CTRL ;

__attribute__((used)) static void ath10k_usb_hif_get_default_pipe(struct ath10k *ar,
         u8 *ul_pipe, u8 *dl_pipe)
{
 *ul_pipe = ATH10K_USB_PIPE_TX_CTRL;
 *dl_pipe = ATH10K_USB_PIPE_RX_CTRL;
}
