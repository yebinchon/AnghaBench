
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RDM_DCA_MODE_ADR ;
 int HW_ATL_RDM_DCA_MODE_MSK ;
 int HW_ATL_RDM_DCA_MODE_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rdm_rx_dca_mode_set(struct aq_hw_s *aq_hw, u32 rx_dca_mode)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RDM_DCA_MODE_ADR,
       HW_ATL_RDM_DCA_MODE_MSK,
       HW_ATL_RDM_DCA_MODE_SHIFT, rx_dca_mode);
}
