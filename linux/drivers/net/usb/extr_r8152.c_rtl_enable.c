
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int version; } ;


 int CR_RE ;
 int CR_TE ;
 int MCU_TYPE_PLA ;
 int PLA_CR ;


 int ocp_read_byte (struct r8152*,int ,int ) ;
 int ocp_write_byte (struct r8152*,int ,int ,int) ;
 int r8152b_reset_packet_filter (struct r8152*) ;
 int r8153b_rx_agg_chg_indicate (struct r8152*) ;
 int rxdy_gated_en (struct r8152*,int) ;

__attribute__((used)) static int rtl_enable(struct r8152 *tp)
{
 u32 ocp_data;

 r8152b_reset_packet_filter(tp);

 ocp_data = ocp_read_byte(tp, MCU_TYPE_PLA, PLA_CR);
 ocp_data |= CR_RE | CR_TE;
 ocp_write_byte(tp, MCU_TYPE_PLA, PLA_CR, ocp_data);

 switch (tp->version) {
 case 129:
 case 128:
  r8153b_rx_agg_chg_indicate(tp);
  break;
 default:
  break;
 }

 rxdy_gated_en(tp, 0);

 return 0;
}
