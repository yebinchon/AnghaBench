
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_ITR_REG_RES_DSBL_ADR ;
 int HW_ATL_ITR_REG_RES_DSBL_MSK ;
 int HW_ATL_ITR_REG_RES_DSBL_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_itr_irq_reg_res_dis_set(struct aq_hw_s *aq_hw, u32 irq_reg_res_dis)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_ITR_REG_RES_DSBL_ADR,
       HW_ATL_ITR_REG_RES_DSBL_MSK,
       HW_ATL_ITR_REG_RES_DSBL_SHIFT, irq_reg_res_dis);
}
