
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int coalesce; int version; } ;


 int MCU_TYPE_USB ;






 int USB_RX_EARLY_TIMEOUT ;
 int USB_RX_EXTRA_AGGR_TMR ;
 int ocp_write_word (struct r8152*,int ,int ,int) ;

__attribute__((used)) static void r8153_set_rx_early_timeout(struct r8152 *tp)
{
 u32 ocp_data = tp->coalesce / 8;

 switch (tp->version) {
 case 133:
 case 132:
 case 131:
 case 130:
  ocp_write_word(tp, MCU_TYPE_USB, USB_RX_EARLY_TIMEOUT,
          ocp_data);
  break;

 case 129:
 case 128:



  ocp_write_word(tp, MCU_TYPE_USB, USB_RX_EARLY_TIMEOUT,
          128 / 8);
  ocp_write_word(tp, MCU_TYPE_USB, USB_RX_EXTRA_AGGR_TMR,
          ocp_data);
  break;

 default:
  break;
 }
}
