
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_hw {int dummy; } ;
struct iavf_adapter {int num_msix_vectors; TYPE_1__* msix_entries; struct iavf_hw hw; } ;
struct TYPE_2__ {int vector; } ;


 int IAVF_VFINT_DYN_CTLN1 (int) ;
 int iavf_flush (struct iavf_hw*) ;
 int synchronize_irq (int ) ;
 int wr32 (struct iavf_hw*,int ,int ) ;

__attribute__((used)) static void iavf_irq_disable(struct iavf_adapter *adapter)
{
 int i;
 struct iavf_hw *hw = &adapter->hw;

 if (!adapter->msix_entries)
  return;

 for (i = 1; i < adapter->num_msix_vectors; i++) {
  wr32(hw, IAVF_VFINT_DYN_CTLN1(i - 1), 0);
  synchronize_irq(adapter->msix_entries[i].vector);
 }
 iavf_flush(hw);
}
