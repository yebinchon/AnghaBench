
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_GLB_REG_RES_DIS_ADR ;
 int HW_ATL_GLB_REG_RES_DIS_MSK ;
 int HW_ATL_GLB_REG_RES_DIS_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_glb_glb_reg_res_dis_set(struct aq_hw_s *aq_hw, u32 glb_reg_res_dis)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_GLB_REG_RES_DIS_ADR,
       HW_ATL_GLB_REG_RES_DIS_MSK,
       HW_ATL_GLB_REG_RES_DIS_SHIFT,
       glb_reg_res_dis);
}
