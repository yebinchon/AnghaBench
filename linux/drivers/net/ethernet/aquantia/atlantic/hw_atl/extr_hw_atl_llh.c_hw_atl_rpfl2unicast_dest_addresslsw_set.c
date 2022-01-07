
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPFL2UC_DAFLSW_ADR (int ) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int ) ;

void hw_atl_rpfl2unicast_dest_addresslsw_set(struct aq_hw_s *aq_hw,
          u32 l2unicast_dest_addresslsw,
          u32 filter)
{
 aq_hw_write_reg(aq_hw, HW_ATL_RPFL2UC_DAFLSW_ADR(filter),
   l2unicast_dest_addresslsw);
}
