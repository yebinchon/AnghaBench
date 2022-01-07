
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int dummy; } ;


 int MCU_TYPE_PLA ;
 int PLA_MISC_1 ;
 int RXDY_GATED_EN ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int ) ;

__attribute__((used)) static void rxdy_gated_en(struct r8152 *tp, bool enable)
{
 u32 ocp_data;

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_MISC_1);
 if (enable)
  ocp_data |= RXDY_GATED_EN;
 else
  ocp_data &= ~RXDY_GATED_EN;
 ocp_write_word(tp, MCU_TYPE_PLA, PLA_MISC_1, ocp_data);
}
