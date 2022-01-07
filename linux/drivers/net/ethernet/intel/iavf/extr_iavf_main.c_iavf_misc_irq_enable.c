
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_hw {int dummy; } ;
struct iavf_adapter {struct iavf_hw hw; } ;


 int IAVF_VFINT_DYN_CTL01 ;
 int IAVF_VFINT_DYN_CTL01_INTENA_MASK ;
 int IAVF_VFINT_DYN_CTL01_ITR_INDX_MASK ;
 int IAVF_VFINT_ICR0_ENA1 ;
 int IAVF_VFINT_ICR0_ENA1_ADMINQ_MASK ;
 int iavf_flush (struct iavf_hw*) ;
 int wr32 (struct iavf_hw*,int ,int) ;

__attribute__((used)) static void iavf_misc_irq_enable(struct iavf_adapter *adapter)
{
 struct iavf_hw *hw = &adapter->hw;

 wr32(hw, IAVF_VFINT_DYN_CTL01, IAVF_VFINT_DYN_CTL01_INTENA_MASK |
           IAVF_VFINT_DYN_CTL01_ITR_INDX_MASK);
 wr32(hw, IAVF_VFINT_ICR0_ENA1, IAVF_VFINT_ICR0_ENA1_ADMINQ_MASK);

 iavf_flush(hw);
}
