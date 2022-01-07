
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int dummy; } ;


 int MCU_TYPE_PLA ;
 int PLA_RSTTALLY ;
 int TALLY_RESET ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int ) ;

__attribute__((used)) static void rtl_tally_reset(struct r8152 *tp)
{
 u32 ocp_data;

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_RSTTALLY);
 ocp_data |= TALLY_RESET;
 ocp_write_word(tp, MCU_TYPE_PLA, PLA_RSTTALLY, ocp_data);
}
