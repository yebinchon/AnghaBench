
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPF_L3_DSTA_ADR (scalar_t__) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,unsigned int) ;

void hw_atl_rpfl3l4_ipv6_dest_addr_clear(struct aq_hw_s *aq_hw, u8 location)
{
 int i;

 for (i = 0; i < 4; ++i)
  aq_hw_write_reg(aq_hw,
    HW_ATL_RPF_L3_DSTA_ADR(location + i),
    0U);
}
