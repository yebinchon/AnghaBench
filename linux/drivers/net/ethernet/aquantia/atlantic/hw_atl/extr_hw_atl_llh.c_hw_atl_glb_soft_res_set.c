
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_GLB_SOFT_RES_ADR ;
 int HW_ATL_GLB_SOFT_RES_MSK ;
 int HW_ATL_GLB_SOFT_RES_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_glb_soft_res_set(struct aq_hw_s *aq_hw, u32 soft_res)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_GLB_SOFT_RES_ADR,
       HW_ATL_GLB_SOFT_RES_MSK,
       HW_ATL_GLB_SOFT_RES_SHIFT, soft_res);
}
