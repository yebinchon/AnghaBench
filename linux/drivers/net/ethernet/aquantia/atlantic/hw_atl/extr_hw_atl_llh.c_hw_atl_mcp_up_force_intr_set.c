
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_MCP_UP_FORCE_INTERRUPT_ADR ;
 int HW_ATL_MCP_UP_FORCE_INTERRUPT_MSK ;
 int HW_ATL_MCP_UP_FORCE_INTERRUPT_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_mcp_up_force_intr_set(struct aq_hw_s *aq_hw, u32 up_force_intr)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_MCP_UP_FORCE_INTERRUPT_ADR,
       HW_ATL_MCP_UP_FORCE_INTERRUPT_MSK,
       HW_ATL_MCP_UP_FORCE_INTERRUPT_SHIFT,
       up_force_intr);
}
