
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct igb_adapter {int test_icr; struct e1000_hw hw; } ;
typedef int irqreturn_t ;


 int E1000_ICR ;
 int IRQ_HANDLED ;
 int rd32 (int ) ;

__attribute__((used)) static irqreturn_t igb_test_intr(int irq, void *data)
{
 struct igb_adapter *adapter = (struct igb_adapter *) data;
 struct e1000_hw *hw = &adapter->hw;

 adapter->test_icr |= rd32(E1000_ICR);

 return IRQ_HANDLED;
}
