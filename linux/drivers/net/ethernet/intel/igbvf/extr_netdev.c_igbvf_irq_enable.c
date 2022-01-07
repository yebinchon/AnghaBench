
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct igbvf_adapter {int eims_enable_mask; struct e1000_hw hw; } ;


 int EIAC ;
 int EIAM ;
 int EIMS ;
 int ew32 (int ,int ) ;

__attribute__((used)) static void igbvf_irq_enable(struct igbvf_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;

 ew32(EIAC, adapter->eims_enable_mask);
 ew32(EIAM, adapter->eims_enable_mask);
 ew32(EIMS, adapter->eims_enable_mask);
}
