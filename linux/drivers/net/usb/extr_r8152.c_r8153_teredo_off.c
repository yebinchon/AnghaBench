
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int version; } ;


 int MCU_TYPE_PLA ;
 int OOB_TEREDO_EN ;
 int PLA_REALWOW_TIMER ;
 int PLA_TEREDO_CFG ;
 int PLA_TEREDO_TIMER ;
 int PLA_WDT6_CTRL ;
 int TEREDO_RS_EVENT_MASK ;
 int TEREDO_SEL ;
 int WDT6_SET_MODE ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_byte (struct r8152*,int ,int ,int) ;
 int ocp_write_dword (struct r8152*,int ,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int) ;

__attribute__((used)) static void r8153_teredo_off(struct r8152 *tp)
{
 u32 ocp_data;

 switch (tp->version) {
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
  ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_TEREDO_CFG);
  ocp_data &= ~(TEREDO_SEL | TEREDO_RS_EVENT_MASK |
         OOB_TEREDO_EN);
  ocp_write_word(tp, MCU_TYPE_PLA, PLA_TEREDO_CFG, ocp_data);
  break;

 case 129:
 case 128:



  ocp_write_byte(tp, MCU_TYPE_PLA, PLA_TEREDO_CFG, 0xff);
  break;

 default:
  break;
 }

 ocp_write_word(tp, MCU_TYPE_PLA, PLA_WDT6_CTRL, WDT6_SET_MODE);
 ocp_write_word(tp, MCU_TYPE_PLA, PLA_REALWOW_TIMER, 0);
 ocp_write_dword(tp, MCU_TYPE_PLA, PLA_TEREDO_TIMER, 0);
}
