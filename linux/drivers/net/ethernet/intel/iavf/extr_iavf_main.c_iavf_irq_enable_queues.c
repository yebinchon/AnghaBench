
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iavf_hw {int dummy; } ;
struct iavf_adapter {int num_msix_vectors; struct iavf_hw hw; } ;


 int BIT (int) ;
 int IAVF_VFINT_DYN_CTLN1 (int) ;
 int IAVF_VFINT_DYN_CTLN1_INTENA_MASK ;
 int IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK ;
 int wr32 (struct iavf_hw*,int ,int) ;

void iavf_irq_enable_queues(struct iavf_adapter *adapter, u32 mask)
{
 struct iavf_hw *hw = &adapter->hw;
 int i;

 for (i = 1; i < adapter->num_msix_vectors; i++) {
  if (mask & BIT(i - 1)) {
   wr32(hw, IAVF_VFINT_DYN_CTLN1(i - 1),
        IAVF_VFINT_DYN_CTLN1_INTENA_MASK |
        IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK);
  }
 }
}
