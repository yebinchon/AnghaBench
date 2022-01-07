
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r8152 {int dummy; } ;


 int EEEP_CR_EEEP_TX ;
 int MCU_TYPE_PLA ;
 int PLA_EEEP_CR ;
 int _10bps ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int ) ;
 int rtl8152_get_speed (struct r8152*) ;

__attribute__((used)) static void rtl_set_eee_plus(struct r8152 *tp)
{
 u32 ocp_data;
 u8 speed;

 speed = rtl8152_get_speed(tp);
 if (speed & _10bps) {
  ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_EEEP_CR);
  ocp_data |= EEEP_CR_EEEP_TX;
  ocp_write_word(tp, MCU_TYPE_PLA, PLA_EEEP_CR, ocp_data);
 } else {
  ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_EEEP_CR);
  ocp_data &= ~EEEP_CR_EEEP_TX;
  ocp_write_word(tp, MCU_TYPE_PLA, PLA_EEEP_CR, ocp_data);
 }
}
