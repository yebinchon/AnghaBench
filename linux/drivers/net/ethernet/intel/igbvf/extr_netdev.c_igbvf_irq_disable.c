
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct igbvf_adapter {scalar_t__ msix_entries; struct e1000_hw hw; } ;


 int EIAC ;
 int EIMC ;
 int ew32 (int ,int ) ;

__attribute__((used)) static void igbvf_irq_disable(struct igbvf_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;

 ew32(EIMC, ~0);

 if (adapter->msix_entries)
  ew32(EIAC, 0);
}
