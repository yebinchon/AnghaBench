
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
 int ATH10K_USB_PIPE_INVALID ;
 int ATH10K_USB_PIPE_RX_CTRL ;
 int ATH10K_USB_PIPE_RX_DATA ;
 int ATH10K_USB_PIPE_RX_DATA2 ;
 int ATH10K_USB_PIPE_RX_INT ;
 int ATH10K_USB_PIPE_TX_CTRL ;
 int ATH10K_USB_PIPE_TX_DATA_HP ;
 int ATH10K_USB_PIPE_TX_DATA_LP ;
 int ATH10K_USB_PIPE_TX_DATA_MP ;
 int RX_URB_COUNT ;
 int TX_URB_COUNT ;

__attribute__((used)) static u8 ath10k_usb_get_logical_pipe_num(u8 ep_address, int *urb_count)
{
 u8 pipe_num = ATH10K_USB_PIPE_INVALID;

 switch (ep_address) {
 case 135:
  pipe_num = ATH10K_USB_PIPE_RX_CTRL;
  *urb_count = RX_URB_COUNT;
  break;
 case 131:
  pipe_num = ATH10K_USB_PIPE_RX_DATA;
  *urb_count = RX_URB_COUNT;
  break;
 case 128:
  pipe_num = ATH10K_USB_PIPE_RX_INT;
  *urb_count = RX_URB_COUNT;
  break;
 case 133:
  pipe_num = ATH10K_USB_PIPE_RX_DATA2;
  *urb_count = RX_URB_COUNT;
  break;
 case 134:
  pipe_num = ATH10K_USB_PIPE_TX_CTRL;
  *urb_count = TX_URB_COUNT;
  break;
 case 130:
  pipe_num = ATH10K_USB_PIPE_TX_DATA_LP;
  *urb_count = TX_URB_COUNT;
  break;
 case 129:
  pipe_num = ATH10K_USB_PIPE_TX_DATA_MP;
  *urb_count = TX_URB_COUNT;
  break;
 case 132:
  pipe_num = ATH10K_USB_PIPE_TX_DATA_HP;
  *urb_count = TX_URB_COUNT;
  break;
 default:

  break;
 }

 return pipe_num;
}
