
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ath6kl {int fw_capabilities; } ;


 int ATH6KL_FW_CAPABILITY_MAP_LP_ENDPOINT ;
 int ATH6KL_USB_PIPE_RX_DATA ;
 int ATH6KL_USB_PIPE_TX_CTRL ;
 int ATH6KL_USB_PIPE_TX_DATA_LP ;
 int ATH6KL_USB_PIPE_TX_DATA_MP ;
 int EPERM ;






 int test_bit (int ,int ) ;

__attribute__((used)) static int ath6kl_usb_map_service_pipe(struct ath6kl *ar, u16 svc_id,
           u8 *ul_pipe, u8 *dl_pipe)
{
 int status = 0;

 switch (svc_id) {
 case 133:
 case 132:
  *ul_pipe = ATH6KL_USB_PIPE_TX_CTRL;

  *dl_pipe = ATH6KL_USB_PIPE_RX_DATA;
  break;
 case 131:
 case 130:
  *ul_pipe = ATH6KL_USB_PIPE_TX_DATA_LP;




  *dl_pipe = ATH6KL_USB_PIPE_RX_DATA;
  break;
 case 129:

  if (test_bit(ATH6KL_FW_CAPABILITY_MAP_LP_ENDPOINT,
        ar->fw_capabilities))
   *ul_pipe = ATH6KL_USB_PIPE_TX_DATA_LP;
  else
   *ul_pipe = ATH6KL_USB_PIPE_TX_DATA_MP;




  *dl_pipe = ATH6KL_USB_PIPE_RX_DATA;
  break;
 case 128:

  if (test_bit(ATH6KL_FW_CAPABILITY_MAP_LP_ENDPOINT,
        ar->fw_capabilities))
   *ul_pipe = ATH6KL_USB_PIPE_TX_DATA_LP;
  else
   *ul_pipe = ATH6KL_USB_PIPE_TX_DATA_MP;




  *dl_pipe = ATH6KL_USB_PIPE_RX_DATA;
  break;
 default:
  status = -EPERM;
  break;
 }

 return status;
}
