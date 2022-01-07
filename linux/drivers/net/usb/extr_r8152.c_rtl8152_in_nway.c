
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8152 {int ocp_base; } ;


 int MCU_TYPE_PLA ;
 int PLA_OCP_GPHY_BASE ;
 int ocp_read_word (struct r8152*,int ,int) ;
 int ocp_write_byte (struct r8152*,int ,int,int) ;
 int ocp_write_word (struct r8152*,int ,int ,int) ;

__attribute__((used)) static bool rtl8152_in_nway(struct r8152 *tp)
{
 u16 nway_state;

 ocp_write_word(tp, MCU_TYPE_PLA, PLA_OCP_GPHY_BASE, 0x2000);
 tp->ocp_base = 0x2000;
 ocp_write_byte(tp, MCU_TYPE_PLA, 0xb014, 0x4c);
 nway_state = ocp_read_word(tp, MCU_TYPE_PLA, 0xb01a);


 if (nway_state & 0xc000)
  return 0;
 else
  return 1;
}
