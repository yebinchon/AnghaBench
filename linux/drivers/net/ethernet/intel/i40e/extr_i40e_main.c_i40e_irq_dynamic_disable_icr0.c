
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;


 int I40E_ITR_NONE ;
 int I40E_PFINT_DYN_CTL0 ;
 int I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT ;
 int i40e_flush (struct i40e_hw*) ;
 int wr32 (struct i40e_hw*,int ,int) ;

void i40e_irq_dynamic_disable_icr0(struct i40e_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;

 wr32(hw, I40E_PFINT_DYN_CTL0,
      I40E_ITR_NONE << I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT);
 i40e_flush(hw);
}
