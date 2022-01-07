
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_hw {int dummy; } ;
struct iavf_adapter {TYPE_1__* msix_entries; struct iavf_hw hw; } ;
struct TYPE_2__ {int vector; } ;


 int IAVF_VFINT_DYN_CTL01 ;
 int iavf_flush (struct iavf_hw*) ;
 int synchronize_irq (int ) ;
 int wr32 (struct iavf_hw*,int ,int ) ;

__attribute__((used)) static void iavf_misc_irq_disable(struct iavf_adapter *adapter)
{
 struct iavf_hw *hw = &adapter->hw;

 if (!adapter->msix_entries)
  return;

 wr32(hw, IAVF_VFINT_DYN_CTL01, 0);

 iavf_flush(hw);

 synchronize_irq(adapter->msix_entries[0].vector);
}
