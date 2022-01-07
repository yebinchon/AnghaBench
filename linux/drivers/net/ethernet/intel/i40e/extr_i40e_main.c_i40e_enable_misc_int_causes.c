
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {int flags; struct i40e_hw hw; } ;


 int I40E_FLAG_IWARP_ENABLED ;
 int I40E_FLAG_PTP ;
 int I40E_PFINT_DYN_CTL0 ;
 int I40E_PFINT_DYN_CTL0_INTENA_MSK_MASK ;
 int I40E_PFINT_DYN_CTL0_SW_ITR_INDX_MASK ;
 int I40E_PFINT_ICR0 ;
 int I40E_PFINT_ICR0_ENA ;
 int I40E_PFINT_ICR0_ENA_ADMINQ_MASK ;
 int I40E_PFINT_ICR0_ENA_ECC_ERR_MASK ;
 int I40E_PFINT_ICR0_ENA_GPIO_MASK ;
 int I40E_PFINT_ICR0_ENA_GRST_MASK ;
 int I40E_PFINT_ICR0_ENA_HMC_ERR_MASK ;
 int I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK ;
 int I40E_PFINT_ICR0_ENA_PCI_EXCEPTION_MASK ;
 int I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK ;
 int I40E_PFINT_ICR0_ENA_TIMESYNC_MASK ;
 int I40E_PFINT_ICR0_ENA_VFLR_MASK ;
 int I40E_PFINT_STAT_CTL0 ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void i40e_enable_misc_int_causes(struct i40e_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 u32 val;


 wr32(hw, I40E_PFINT_ICR0_ENA, 0);
 rd32(hw, I40E_PFINT_ICR0);

 val = I40E_PFINT_ICR0_ENA_ECC_ERR_MASK |
       I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK |
       I40E_PFINT_ICR0_ENA_GRST_MASK |
       I40E_PFINT_ICR0_ENA_PCI_EXCEPTION_MASK |
       I40E_PFINT_ICR0_ENA_GPIO_MASK |
       I40E_PFINT_ICR0_ENA_HMC_ERR_MASK |
       I40E_PFINT_ICR0_ENA_VFLR_MASK |
       I40E_PFINT_ICR0_ENA_ADMINQ_MASK;

 if (pf->flags & I40E_FLAG_IWARP_ENABLED)
  val |= I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK;

 if (pf->flags & I40E_FLAG_PTP)
  val |= I40E_PFINT_ICR0_ENA_TIMESYNC_MASK;

 wr32(hw, I40E_PFINT_ICR0_ENA, val);


 wr32(hw, I40E_PFINT_DYN_CTL0, I40E_PFINT_DYN_CTL0_SW_ITR_INDX_MASK |
     I40E_PFINT_DYN_CTL0_INTENA_MSK_MASK);


 wr32(hw, I40E_PFINT_STAT_CTL0, 0);
}
