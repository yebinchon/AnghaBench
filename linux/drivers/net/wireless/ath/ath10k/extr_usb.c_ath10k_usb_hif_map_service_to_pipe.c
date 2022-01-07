
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ath10k {int dummy; } ;





 int ATH10K_USB_PIPE_RX_DATA ;
 int ATH10K_USB_PIPE_TX_CTRL ;
 int ATH10K_USB_PIPE_TX_DATA_LP ;
 int EPERM ;

__attribute__((used)) static int ath10k_usb_hif_map_service_to_pipe(struct ath10k *ar, u16 svc_id,
           u8 *ul_pipe, u8 *dl_pipe)
{
 switch (svc_id) {
 case 129:
 case 128:
  *ul_pipe = ATH10K_USB_PIPE_TX_CTRL;

  *dl_pipe = ATH10K_USB_PIPE_RX_DATA;
  break;
 case 130:
  *ul_pipe = ATH10K_USB_PIPE_TX_DATA_LP;



  *dl_pipe = ATH10K_USB_PIPE_RX_DATA;
  break;
 default:
  return -EPERM;
 }

 return 0;
}
