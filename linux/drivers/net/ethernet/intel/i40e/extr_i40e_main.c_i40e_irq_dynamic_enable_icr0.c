
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;


 int I40E_ITR_NONE ;
 int I40E_PFINT_DYN_CTL0 ;
 int I40E_PFINT_DYN_CTL0_CLEARPBA_MASK ;
 int I40E_PFINT_DYN_CTL0_INTENA_MASK ;
 int I40E_PFINT_DYN_CTL0_ITR_INDX_SHIFT ;
 int i40e_flush (struct i40e_hw*) ;
 int wr32 (struct i40e_hw*,int ,int) ;

void i40e_irq_dynamic_enable_icr0(struct i40e_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 u32 val;

 val = I40E_PFINT_DYN_CTL0_INTENA_MASK |
       I40E_PFINT_DYN_CTL0_CLEARPBA_MASK |
       (I40E_ITR_NONE << I40E_PFINT_DYN_CTL0_ITR_INDX_SHIFT);

 wr32(hw, I40E_PFINT_DYN_CTL0, val);
 i40e_flush(hw);
}
