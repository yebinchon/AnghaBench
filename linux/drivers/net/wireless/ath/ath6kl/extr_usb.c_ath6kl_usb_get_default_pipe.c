
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath6kl {int dummy; } ;


 int ATH6KL_USB_PIPE_RX_CTRL ;
 int ATH6KL_USB_PIPE_TX_CTRL ;

__attribute__((used)) static void ath6kl_usb_get_default_pipe(struct ath6kl *ar,
     u8 *ul_pipe, u8 *dl_pipe)
{
 *ul_pipe = ATH6KL_USB_PIPE_TX_CTRL;
 *dl_pipe = ATH6KL_USB_PIPE_RX_CTRL;
}
