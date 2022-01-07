
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPF_L3_REG_CTRL_ADR (int ) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int ) ;

void hw_atl_rpfl3l4_cmd_set(struct aq_hw_s *aq_hw, u8 location, u32 cmd)
{
 aq_hw_write_reg(aq_hw, HW_ATL_RPF_L3_REG_CTRL_ADR(location), cmd);
}
