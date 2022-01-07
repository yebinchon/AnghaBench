
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RDM_DCADCPUID_ADR (int ) ;
 int HW_ATL_RDM_DCADCPUID_MSK ;
 int HW_ATL_RDM_DCADCPUID_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rdm_cpu_id_set(struct aq_hw_s *aq_hw, u32 cpuid, u32 dca)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RDM_DCADCPUID_ADR(dca),
       HW_ATL_RDM_DCADCPUID_MSK,
       HW_ATL_RDM_DCADCPUID_SHIFT, cpuid);
}
