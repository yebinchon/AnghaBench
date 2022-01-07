
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int dummy; } ;


 int CPCR_RX_VLAN ;
 int MCU_TYPE_PLA ;
 int PLA_CPCR ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int ) ;

__attribute__((used)) static void rtl_rx_vlan_en(struct r8152 *tp, bool enable)
{
 u32 ocp_data;

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_CPCR);
 if (enable)
  ocp_data |= CPCR_RX_VLAN;
 else
  ocp_data &= ~CPCR_RX_VLAN;
 ocp_write_word(tp, MCU_TYPE_PLA, PLA_CPCR, ocp_data);
}
