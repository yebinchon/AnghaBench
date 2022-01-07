
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPF_ET_RXQFEN_ADR (int ) ;
 int HW_ATL_RPF_ET_RXQFEN_MSK ;
 int HW_ATL_RPF_ET_RXQFEN_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpf_etht_rx_queue_en_set(struct aq_hw_s *aq_hw,
         u32 etht_rx_queue_en,
         u32 filter)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPF_ET_RXQFEN_ADR(filter),
       HW_ATL_RPF_ET_RXQFEN_MSK,
       HW_ATL_RPF_ET_RXQFEN_SHIFT,
       etht_rx_queue_en);
}
