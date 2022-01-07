
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int dummy; } ;


 int FMC_FCR_MCU_EN ;
 int MCU_TYPE_PLA ;
 int PLA_FMC ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int ) ;

__attribute__((used)) static void r8152b_reset_packet_filter(struct r8152 *tp)
{
 u32 ocp_data;

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_FMC);
 ocp_data &= ~FMC_FCR_MCU_EN;
 ocp_write_word(tp, MCU_TYPE_PLA, PLA_FMC, ocp_data);
 ocp_data |= FMC_FCR_MCU_EN;
 ocp_write_word(tp, MCU_TYPE_PLA, PLA_FMC, ocp_data);
}
