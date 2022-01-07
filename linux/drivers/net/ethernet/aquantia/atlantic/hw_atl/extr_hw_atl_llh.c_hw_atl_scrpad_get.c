
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_GLB_CPU_SCRATCH_SCP_ADR (int ) ;
 int aq_hw_read_reg (struct aq_hw_s*,int ) ;

u32 hw_atl_scrpad_get(struct aq_hw_s *aq_hw, u32 scratch_scp)
{
 return aq_hw_read_reg(aq_hw,
         HW_ATL_GLB_CPU_SCRATCH_SCP_ADR(scratch_scp));
}
