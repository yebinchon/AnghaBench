
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_TDM_DESCDHD_ADR (int ) ;
 int HW_ATL_TDM_DESCDHD_MSK ;
 int HW_ATL_TDM_DESCDHD_SHIFT ;
 int aq_hw_read_reg_bit (struct aq_hw_s*,int ,int ,int ) ;

u32 hw_atl_tdm_tx_desc_head_ptr_get(struct aq_hw_s *aq_hw, u32 descriptor)
{
 return aq_hw_read_reg_bit(aq_hw, HW_ATL_TDM_DESCDHD_ADR(descriptor),
      HW_ATL_TDM_DESCDHD_MSK,
      HW_ATL_TDM_DESCDHD_SHIFT);
}
